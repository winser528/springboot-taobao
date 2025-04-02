package com.fit.web;

import com.fit.base.BaseController;
import com.fit.entity.User;
import com.fit.util.DateUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

/**
 * @AUTO
 * @Author AIM
 * @DATE 2025/4/1
 */
@Controller
public class OrderController extends BaseController {

    @RequestMapping("/Orders")
    public void order(HttpServletRequest request) {
        Map<String, Object> params = getRequestParamsMap(request);
        // 获取订单页面信息
        String[] items = request.getParameterValues("items");
        // 商品总和
        String total = request.getParameter("total");
        // 获取登陆时用户的信息
        User user = (User) request.getSession().getAttribute("userInfo");
        String createTime = DateUtils.getNowTime();
        Long id = user.getId();
        for (String s : items) {
            String[] wareInfo = s.split(":");// 这里切割数组
            String wid = wareInfo[0];
            String count = wareInfo[1];
            String price = wareInfo[2];
            // 这里要用构造添加数据
            // ob.addOrder();
        }
    }
}
