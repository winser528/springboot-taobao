package com.fit.service;

import com.fit.base.BaseCrudService;
import com.fit.dao.CategoryDao;
import com.fit.entity.Category;
import org.springframework.stereotype.Service;

/**
 * @AUTO 分类表服务实现类
 * @Author AIM
 * @DATE 2025-04-01 11:38:15
 */
@Service
public class CategoryService extends BaseCrudService<CategoryDao, Category> {
}