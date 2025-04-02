package com.fit.service;

import com.fit.base.BaseCrudService;
import com.fit.dao.MessageBoardDao;
import com.fit.entity.MessageBoard;
import org.springframework.stereotype.Service;

/**
 * @AUTO 留言板服务实现类
 * @Author AIM
 * @DATE 2025-04-01 11:38:15
 */
@Service
public class MessageBoardService extends BaseCrudService<MessageBoardDao, MessageBoard> {
}