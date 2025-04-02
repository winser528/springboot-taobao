package com.fit.web;

import com.fit.base.AjaxResult;
import com.fit.base.BaseController;
import com.fit.entity.User;
import com.fit.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

/**
 * @AUTO
 * @Author AIM
 * @DATE 2025/4/1
 */
@Controller
public class LoginController extends BaseController {

    @Autowired
    private UserService userService;

    @RequestMapping("/login")
    public String login() {
        return "login";
    }

    @RequestMapping(value = "/loginUser", method = RequestMethod.POST)
    @ResponseBody
    public AjaxResult loginUser(HttpServletRequest request, HttpSession session) {
        AjaxResult result = AjaxResult.error("帐号或者密码错误!");
        String account = request.getParameter("username");
        String password = request.getParameter("password");
        // 获取页面类型
        String power = request.getParameter("power");
        // 获取用户资料
        User us = new User();
        us.setAccount(account);
        us.setPassword(password);
        User user = this.userService.get(us);
        // 这里判断用户类型 和登录 页面
        if (user != null) {
            result = AjaxResult.success();
            if (user.getPower() == 0 && "0".equals(power)) {
                session.setAttribute("userInfo", user);// 写入到session用户信息
                result.put("back_act", "/admin/index");
            } else if (user.getPower() == 1 && "1".equals(power) || user.getPower() == 0 && "1".equals(power)) {
                session.setAttribute("userInfo", user);// 写入到session用户信息
                result.put("back_act", "/index");
            }
        }
        return result;
    }

    @RequestMapping("/register")
    public String register() {
        return "register";
    }

    @RequestMapping(value = "/registerVerify", method = RequestMethod.POST)
    @ResponseBody
    public AjaxResult registerVerify(HttpServletRequest request) {
        AjaxResult result = AjaxResult.error("已经存在!");
        Map<String, Object> map = getRequestParamsMap(request);
        List<User> list = this.userService.findList(map);
        if (list.isEmpty()) {
            result = AjaxResult.success();
        }
        return result;
    }

    @RequestMapping(value = "/registerUser", method = RequestMethod.POST)
    @ResponseBody
    public AjaxResult registerUser(HttpServletRequest request) {
        AjaxResult result = AjaxResult.error("用户已存在!");
        User us = new User();
        us.setAccount(request.getParameter("username"));
        us.setPassword(request.getParameter("password"));
        User user = this.userService.get(us);
        if (user == null) {
            us.setEmail(request.getParameter("email"));
            us.setPower(1);
            this.userService.save(us);
            result = AjaxResult.success("用户注册成功!");
            result.put("return_url", "/index");
        }
        return result;
    }
}