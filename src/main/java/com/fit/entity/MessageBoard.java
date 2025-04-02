package com.fit.entity;

import com.fit.base.BaseEntity;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

/**
 * @AUTO 留言板
 * @Author AIM
 * @DATE 2025-04-01 11:38:15
 */
@Data
@Builder
@NoArgsConstructor //无参数的构造方法
@AllArgsConstructor //包含所有变量构造方法
public class MessageBoard extends BaseEntity<MessageBoard> {
    /**  (无默认值) */
    private Long oid;

    /**  (无默认值) */
    private Long wid;

    /**   (默认值为: CURRENT_TIMESTAMP) */
    private Date time;

    /**  (无默认值) */
    private String content;
}