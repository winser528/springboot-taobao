package com.fit.service;

import com.fit.base.BaseCrudService;
import com.fit.dao.UserDao;
import com.fit.entity.User;
import org.springframework.stereotype.Service;

/**
 * @AUTO 服务实现类
 * @Author AIM
 * @DATE 2025-04-01 11:38:15
 */
@Service
public class UserService extends BaseCrudService<UserDao, User> {
}