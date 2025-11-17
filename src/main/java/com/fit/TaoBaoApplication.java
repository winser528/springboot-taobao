package com.fit;

import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.util.StringUtils;

import java.net.InetAddress;
import java.net.UnknownHostException;

@Slf4j
@SpringBootApplication
public class TaoBaoApplication extends SpringBootServletInitializer {
    public static void main(String[] args) throws UnknownHostException {
        ConfigurableApplicationContext run = SpringApplication.run(TaoBaoApplication.class, args);
        String ip = InetAddress.getLocalHost().getHostAddress();
        String port = System.getenv("POST");
        if (StringUtils.isEmpty(port)) {
            port = run.getEnvironment().getProperty("server.port");
        }
        log.info("---------------------------------------------------------");
        log.info("Access URLs:\n\tLocal: \t\thttp://localhost:{}/\n\tExternal:\t{}://{}:{}/", port, "http", ip, port);
        log.info("---------------------- admin-web ------------------------");
    }

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(TaoBaoApplication.class);
    }
}