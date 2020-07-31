package com.daily.web;

import javax.servlet.ServletContext;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.daily.domain.GeneralMember;
import com.daily.domain.Member;
import com.daily.service.MemberService;

@Controller
@RequestMapping("member")
public class MemberController {
  
  static Logger logger = LogManager.getLogger(MemberController.class);
  
  public MemberController() {
    MemberController.logger.debug("MemeberController 객체 생성!");
  }

  @Autowired
  ServletContext servletContext;
  
  @Autowired
  MemberService memberService;
  
  @GetMapping("generalJoin")
  public void addForm() {}
  
  @PostMapping("generalJoin")
  public ModelAndView add(Member member, GeneralMember generalMember) throws Exception {
    if (memberService.add(member, generalMember) > 0) {
      ModelAndView mv = new ModelAndView();
      return mv;
    } else {
      throw new Exception("회원을 추가할 수 없습니다.");
    }
  }
  
}
