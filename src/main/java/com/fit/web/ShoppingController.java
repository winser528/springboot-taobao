package com.fit.web;

import com.fit.base.BaseController;
import com.fit.entity.Wares;
import com.fit.service.WaresService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

/**
 * @AUTO
 * @Author AIM
 * @DATE 2025/4/1
 */
@Controller
public class ShoppingController extends BaseController {

    @Autowired
    private WaresService waresService;

    @RequestMapping
    public String cart(HttpServletRequest request, HttpSession session) {
        String[] wareId = request.getParameterValues("waresId");// 获取商品ID
        // 从session中取出购物车
        Map<String, Wares> cart = (Map) session.getAttribute("cart");// 这里是声明赋值
        // 如果没有购物车，则创建一个。
        if (cart == null) {
            cart = new HashMap<String, Wares>();// 创建Map
            session.setAttribute("cart", cart);
        }
        // 在购物中便利添加商品
        for (String wId : wareId) {
            Wares wareCart = cart.get(wId);// 这里的wareCart是对象Count是属性
            if (wareCart != null) {
                wareCart.setCount(wareCart.getCount() + 1);
            } else {
                Wares ware = this.waresService.get(Long.parseLong(wId));
                ware.setCount(1);
                cart.put(wId, ware);
            }
        }
        return "cart";
    }
}
