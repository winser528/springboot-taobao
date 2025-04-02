package com.fit.web;

import com.fit.entity.Category;
import com.fit.entity.User;
import com.fit.service.CategoryService;
import com.fit.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.*;

/**
 * @AUTO
 * @Author AIM
 * @DATE 2025/4/1
 */
@Controller
public class IndexController {

    @Autowired
    private CategoryService categoryService;

    @RequestMapping({"", "/", "/index"})
    public String index(HttpServletRequest request, HttpSession session) {
        Map<String, Object> map = new HashMap<String, Object>();
        User user = (User) session.getAttribute("userInfo");
        if (user != null && user.getAccount() != null) {
            request.setAttribute("user", user);
        }

        List<Category> categoryOne = (List<Category>) session.getAttribute("categoryOne");
        List<Category> categoryTwo = (List<Category>) session.getAttribute("categoryTwo");
        List<Category> categoryThree = (List<Category>) session.getAttribute("categoryThree");
        if (categoryOne == null || categoryTwo == null || categoryThree == null || categoryOne.isEmpty() || categoryTwo.isEmpty() || categoryThree.isEmpty()) {
            categoryOne = new ArrayList<>();
            categoryTwo = new ArrayList<>();
            categoryThree = new ArrayList<>();
            Set<Long> one_set = new HashSet<Long>();
            List<Category> list = this.categoryService.findList(map);
            Collections.sort(list, Comparator.comparing(Category::getId));
            for (Category category : list) {
                if (category.getCid() == 0) {
                    categoryOne.add(category);
                    one_set.add(category.getId());
                } else {
                    if (one_set.contains(category.getCid())) {
                        categoryTwo.add(category);
                    } else {
                        categoryThree.add(category);
                    }
                }
            }
            session.setAttribute("categoryOne", categoryOne);
            session.setAttribute("categoryTwo", categoryTwo);
            session.setAttribute("categoryThree", categoryThree);
        }
        List<Category> yi = (List<Category>) session.getAttribute("utilyi");
        List<Category> er = (List<Category>) session.getAttribute("utiler");
        List<Category> san = (List<Category>) session.getAttribute("utilsan");
        List<Category> si = (List<Category>) session.getAttribute("utilsi");
        List<Category> wu = (List<Category>) session.getAttribute("utilwu");
        if (yi == null || yi.isEmpty()) {
            map.put("cid", "262");
            yi = this.categoryService.findList(map);
            session.setAttribute("utilyi", yi);
        }
        if (er == null || er.isEmpty()) {
            map.put("cid", "263");
            er = this.categoryService.findList(map);
            session.setAttribute("utiler", er);
        }
        if (san == null || san.isEmpty()) {
            map.put("cid", "264");
            san = this.categoryService.findList(map);
            session.setAttribute("utilsan", san);
        }
        if (si == null || si.isEmpty()) {
            map.put("cid", "265");
            si = this.categoryService.findList(map);
            session.setAttribute("utilsi", si);
        }
        if (wu == null || wu.isEmpty()) {
            map.put("cid", "266");
            wu = this.categoryService.findList(map);
            session.setAttribute("utilwu", wu);
        }

        request.setAttribute("utilyi", yi);
        request.setAttribute("utiler", er);
        request.setAttribute("utilsan", san);
        request.setAttribute("utilsi", si);
        request.setAttribute("utilwu", wu);
        request.setAttribute("categoryOne", categoryOne);
        request.setAttribute("categoryTwo", categoryTwo);
        request.setAttribute("categoryThree", categoryThree);
        return "index";
    }
}