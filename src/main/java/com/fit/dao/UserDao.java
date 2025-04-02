package com.fit.dao;

import com.fit.base.BaseCrudDao;
import com.fit.entity.User;
import org.apache.ibatis.annotations.Mapper;

/**
 * @AUTO 接口
 * @Author AIM
 * @DATE 2025-04-01 11:38:15
 */
@Mapper
public interface UserDao extends BaseCrudDao<User> {
}