package com.daily.service.impl;

import org.springframework.stereotype.Component;
import org.springframework.transaction.support.TransactionTemplate;
import com.daily.dao.NoticeDao;
import com.daily.domain.Notice;
import com.daily.service.NoticeService;

@Component
public class NoticeServiceImpl implements NoticeService {
  NoticeDao noticeDao;
  TransactionTemplate transactionTemplate;

  public NoticeServiceImpl(NoticeDao noticeDao) {
    this.noticeDao = noticeDao;
  }

  @Override
  public boolean insert(Notice notice) throws Exception {
    return noticeDao.insert(notice) > 0;
  }

}
