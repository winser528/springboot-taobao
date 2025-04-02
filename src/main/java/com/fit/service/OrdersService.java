package com.fit.service;

import com.fit.base.BaseCrudService;
import com.fit.dao.OrdersDao;
import com.fit.entity.Orders;
import org.springframework.stereotype.Service;

/**
 * @AUTO 订单服务实现类
 * @Author AIM
 * @DATE 2025-04-01 11:38:15
 */
@Service
public class OrdersService extends BaseCrudService<OrdersDao, Orders> {
}