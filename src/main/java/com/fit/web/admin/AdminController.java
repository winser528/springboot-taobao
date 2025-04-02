package com.fit.web.admin;

import com.fit.base.BaseController;
import com.fit.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * @AUTO
 * @Author AIM
 * @DATE 2025/4/2
 */
@Controller
@RequestMapping("/admin")
public class AdminController extends BaseController {

    @RequestMapping("/login")
    public String adminLogin() {
        return "/admin/login";
    }

    @RequestMapping("/admin_{path}")
    public String adminLogin(@PathVariable String path) {
        return String.format("/admin/admin_%s", path);
    }

    @RequestMapping({"", "/", "/index"})
    public String index(HttpServletRequest request, HttpSession session) {
        User user = (User) session.getAttribute("userInfo");
        if (user != null && user.getAccount() != null) {
            request.setAttribute("user", user);
        }
        return "/admin/index";
    }
}
