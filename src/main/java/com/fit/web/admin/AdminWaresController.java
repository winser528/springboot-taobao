package com.fit.web.admin;

import com.fit.base.BaseController;
import com.fit.entity.Category;
import com.fit.entity.User;
import com.fit.entity.Wares;
import com.fit.service.CategoryService;
import com.fit.service.WaresService;
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
public class AdminWaresController extends BaseController {

    @Autowired
    private CategoryService categoryService;
    @Autowired
    private WaresService waresService;

    @RequestMapping("/wares_{path}")
    public String waresPath(HttpServletRequest request, HttpSession session, @PathVariable String path) {
        Map<String, Object> map = getRequestParamsMap(request);
        if (path.endsWith("add")) {
            List<Category> c_One = (List<Category>) session.getAttribute("categoryOne");
            List<Category> c_Two = (List<Category>) session.getAttribute("categoryTwo");
            List<Category> c_Three = (List<Category>) session.getAttribute("categoryThree");
            if (c_One == null || c_Two == null || c_One.isEmpty() || c_Two.isEmpty()) {
                Set<Long> one_set = new HashSet<Long>();
                c_One = new ArrayList<>();
                c_Two = new ArrayList<>();
                c_Three = new ArrayList<>();
                List<Category> list = this.categoryService.findList(map);
                Collections.sort(list, Comparator.comparing(Category::getId));
                for (Category category : list) {
                    if (category.getCid() == 0) {
                        c_One.add(category);
                        one_set.add(category.getId());
                    } else {
                        if (one_set.contains(category.getCid())) {
                            c_Two.add(category);
                        } else {
                            c_Three.add(category);
                        }
                    }
                }
            }
            request.setAttribute("listOne", c_One);
            request.setAttribute("listTwo", c_Two);
            request.setAttribute("listThree", c_Three);
        } else if (path.endsWith("show")) {
            List<Wares> wares = this.waresService.findList(map);
            request.setAttribute("listwares", wares);
        }
        return String.format("/admin/wares_%s", path);
    }
}