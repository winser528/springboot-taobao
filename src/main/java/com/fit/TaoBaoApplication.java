package com.fit;

import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.ConfigurableApplicationContext;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Optional;

@Slf4j
@SpringBootApplication
public class TaoBaoApplication extends SpringBootServletInitializer {
    public static void main(String[] args) throws UnknownHostException {
        ConfigurableApplicationContext run = SpringApplication.run(TaoBaoApplication.class, args);
        String ip = InetAddress.getLocalHost().getHostAddress();
        String port = getParam("POST", run.getEnvironment().getProperty("server.port"));
        log.info("---------------------------------------------------------");
        log.info("\nApplication AceAdmin is running! Access URLs:\n\tLocal: \t\thttp://localhost:{}\n\tExternal:\thttp://{}:{}", port, ip, port);
        log.info("-----------------已启动部署 admin-web----------------------");
    }

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(TaoBaoApplication.class);
    }

    private static String getParam(String param, String defVal) {
        Optional<String> envPort = Optional.ofNullable(System.getenv(param));
        return envPort.map(String::valueOf).orElse(defVal);
    }
}