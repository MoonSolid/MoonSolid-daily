package com.daily.dao;

import java.util.List;
import com.daily.domain.GeneralMember;

public interface GeneralMemberDao {

  int insert(GeneralMember generalMember) throws Exception;
  
  List<GeneralMember> findAll() throws Exception;
  
}
