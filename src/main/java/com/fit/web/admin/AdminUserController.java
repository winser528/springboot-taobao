package com.fit.web.admin;

import com.fit.base.BaseController;
import com.fit.entity.User;
import com.fit.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

/**
 * @AUTO
 * @Author AIM
 * @DATE 2025/4/2
 */
@Controller
@RequestMapping("/admin")
public class AdminUserController extends BaseController {

    @Autowired
    private UserService userService;

    @RequestMapping("/user_{path}")
    public String userPath(HttpServletRequest request, @PathVariable String path) {
        Map<String, Object> map = getRequestParamsMap(request);
        if (path.endsWith("add")) {

        } else if (path.endsWith("show")) {
            List<User> list = this.userService.findList(map);
            request.setAttribute("userList", list);
            request.setAttribute("currentPage", 1);
            request.setAttribute("totalPages", 10);
        }

        return String.format("/admin/user_%s", path);
    }
}