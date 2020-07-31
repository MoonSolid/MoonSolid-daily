package com.daily.dao;

import java.util.Map;
import com.daily.domain.Member;

public interface MemberDao {
  
  //회원가입
  int insert(Member member) throws Exception;
  
  //로그인
  Member findByEmailAndPassword(Map<String, Object> params) throws Exception;
  
}
