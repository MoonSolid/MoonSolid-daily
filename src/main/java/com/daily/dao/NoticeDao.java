package com.daily.dao;

import java.util.List;
import com.daily.domain.Notice;

public interface NoticeDao {
  
  int insert(Notice notice) throws Exception;
  
  List<Notice> findAll() throws Exception;

}
