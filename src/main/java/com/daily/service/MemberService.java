package com.daily.service;

import java.util.List;
import com.daily.domain.GeneralMember;
import com.daily.domain.Member;

public interface MemberService {

  int add(Member member, GeneralMember generalMember) throws Exception;
  
  List<GeneralMember> findAll() throws Exception;
  
  Member login(String email, String password) throws Exception;
  
}
