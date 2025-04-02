package com.fit.entity;

import com.fit.base.BaseEntity;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;

/**
 * @AUTO 商品
 * @Author AIM
 * @DATE 2025-04-01 18:17:54
 */
@Data
@Builder
@NoArgsConstructor //无参数的构造方法
@AllArgsConstructor //包含所有变量构造方法
public class Wares extends BaseEntity<Wares> {
    /**  (无默认值) */
    private Long cid;

    /**  (无默认值) */
    private String wname;

    /**  (无默认值) */
    private BigDecimal price;

    /**  (无默认值) */
    private String image;

    /**  (无默认值) */
    private String winfo;

    /**  (无默认值) */
    private Integer stock;

    /**  (无默认值) */
    private BigDecimal yprice;

    /**  (无默认值) */
    private BigDecimal fufen;

    /**  (无默认值) */
    private BigDecimal discount;

    /**  (无默认值) */
    private Integer count;

    /**  (无默认值) */
    private Integer wstatus;
}