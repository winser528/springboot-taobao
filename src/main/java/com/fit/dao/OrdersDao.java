package com.fit.dao;

import com.fit.base.BaseCrudDao;
import com.fit.entity.Orders;
import org.apache.ibatis.annotations.Mapper;

/**
 * @AUTO 订单接口
 * @Author AIM
 * @DATE 2025-04-01 11:38:15
 */
@Mapper
public interface OrdersDao extends BaseCrudDao<Orders> {
}