package com.daily.dao;

import java.util.List;
import java.util.Map;
import com.daily.domain.GeneralMember;

public interface GeneralMemberDao {

  //일반회원가입
  int insert(GeneralMember generalMember) throws Exception;
  
  List<GeneralMember> findAll() throws Exception;
  
  //일반회원 로그인
  GeneralMember findByEmailAndPassword(Map<String, Object> params) throws Exception;
  
}
