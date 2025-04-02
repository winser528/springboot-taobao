package com.fit.web;

import com.fit.base.BaseController;
import com.fit.entity.Wares;
import com.fit.service.WaresService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

/**
 * @AUTO
 * @Author AIM
 * @DATE 2025/4/1
 */
@Controller
public class WaresController extends BaseController {

    @Autowired
    private WaresService waresService;

    @RequestMapping("/WaresHunt")
    public String hunt(HttpServletRequest request) {
        Map<String, Object> params = getRequestParamsMap(request);
        List<Wares> wares = this.waresService.findList(params);
        request.setAttribute("listwares", wares);
        request.setAttribute("keywords", params.get("keywords"));// 搜索关键字
        return "fenlei";
    }
}