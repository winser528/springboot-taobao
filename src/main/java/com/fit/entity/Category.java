package com.fit.entity;

import com.fit.base.BaseEntity;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @AUTO 分类表
 * @Author AIM
 * @DATE 2025-04-01 11:38:15
 */
@Data
@Builder
@NoArgsConstructor //无参数的构造方法
@AllArgsConstructor //包含所有变量构造方法
public class Category extends BaseEntity<Category> {
    /**  (无默认值) */
    private String cname;

    /**  (无默认值) */
    private Long cid;
}