package com.fit.entity;

import com.fit.base.BaseEntity;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;

/**
 * @AUTO 订单
 * @Author AIM
 * @DATE 2025-04-01 11:38:15
 */
@Data
@Builder
@NoArgsConstructor //无参数的构造方法
@AllArgsConstructor //包含所有变量构造方法
public class Orders extends BaseEntity<Orders> {
    /** 用户ID (无默认值) */
    private Long uid;

    /** 商品ID (无默认值) */
    private Long wid;

    /**  (无默认值) */
    private Integer count;

    /**  (无默认值) */
    private BigDecimal total;
}