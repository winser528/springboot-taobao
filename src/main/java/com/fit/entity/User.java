package com.fit.entity;

import com.fit.base.BaseEntity;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @AUTO 
 * @Author AIM
 * @DATE 2025-04-01 11:38:15
 */
@Data
@Builder
@NoArgsConstructor //无参数的构造方法
@AllArgsConstructor //包含所有变量构造方法
public class User extends BaseEntity<User> {
    /**  (无默认值) */
    private String account;

    /**  (无默认值) */
    private String password;

    /**  (无默认值) */
    private String email;

    /**  (无默认值) */
    private Integer power;

    /**  (无默认值) */
    private Integer status;
}