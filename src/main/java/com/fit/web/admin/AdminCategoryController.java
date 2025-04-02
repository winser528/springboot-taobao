package com.fit.web.admin;

import com.fit.base.BaseController;
import com.fit.entity.Category;
import com.fit.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.*;

/**
 * @AUTO
 * @Author AIM
 * @DATE 2025/4/2
 */
@Controller
@RequestMapping("/admin")
public class AdminCategoryController extends BaseController {

    @Autowired
    private CategoryService categoryService;

    @RequestMapping("/category_{path}")
    public String categoryPath(HttpServletRequest request, HttpSession session, @PathVariable String path) {
        Map<String, Object> map = getRequestParamsMap(request);
        if (path.endsWith("add")) {
            List<Category> c_One = (List<Category>) session.getAttribute("categoryOne");
            List<Category> c_Two = (List<Category>) session.getAttribute("categoryTwo");
            if (c_One == null || c_Two == null || c_One.isEmpty() || c_Two.isEmpty()) {
                Set<Long> one_set = new HashSet<Long>();
                c_One = new ArrayList<>();
                c_Two = new ArrayList<>();
                List<Category> list = this.categoryService.findList(map);
                Collections.sort(list, Comparator.comparing(Category::getId));
                for (Category category : list) {
                    if (category.getCid() == 0) {
                        c_One.add(category);
                        one_set.add(category.getId());
                    } else {
                        if (one_set.contains(category.getCid())) {
                            c_Two.add(category);
                        }
                    }
                }
            }
            request.setAttribute("listOne", c_One);
            request.setAttribute("listTwo", c_Two);
        } else if (path.endsWith("show")) {
            List<Category> c_one = (List<Category>) session.getAttribute("categoryOne");
            if (c_one == null || c_one.isEmpty()) {
                c_one = new ArrayList<>();
                map.put("cid", 0);
                c_one = this.categoryService.findList(map);
            }
            request.setAttribute("listOne", c_one);
        }
        return String.format("/admin/category_%s", path);
    }
}