package com.daily.service.impl;

import java.util.List;
import org.springframework.stereotype.Component;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.support.TransactionTemplate;
import com.daily.dao.GeneralMemberDao;
import com.daily.dao.MemberDao;
import com.daily.domain.GeneralMember;
import com.daily.domain.Member;
import com.daily.service.MemberService;

@Component
public class MemberServiceImpl implements MemberService {

  MemberDao memberDao;
  GeneralMemberDao generalMemberDao;
  TransactionTemplate transactionTemplate;
  
  public MemberServiceImpl(MemberDao memberDao, GeneralMemberDao generalMemberDao,      
      PlatformTransactionManager pftxManager) {
    this.memberDao = memberDao;
    this.generalMemberDao = generalMemberDao;
    this.transactionTemplate = new TransactionTemplate(pftxManager);
  }
  
  // 일반회원가입
  @Transactional
  @Override
  public int add(Member member, GeneralMember generalMember) throws Exception {
    member.setType(1);
    if (memberDao.insert(member) == 0) {
      return 0;
    } 
    generalMember.setNumber(member.getNumber());
    generalMemberDao.insert(generalMember);
    return 1;
  }

  @Override
  public List<GeneralMember> findAll() throws Exception {
    return generalMemberDao.findAll();
  }

}
