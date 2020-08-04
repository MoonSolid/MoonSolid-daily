package com.daily.web;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.daily.domain.Member;
import com.daily.service.MemberService;

@Controller
@RequestMapping("auth")
public class AuthController {

  static Logger logger = LogManager.getLogger(MemberController.class);
  
  public AuthController() {
    MemberController.logger.debug("AuthController 객체 생성!");
  }
  
  @Autowired
  MemberService memberService;
  
  @GetMapping("loginForm")
  public void loginForm(HttpServletRequest request,Model model)  throws Exception {
    
    String email = "";
    Cookie[] cookies = request.getCookies();
    if (cookies != null) {
      for (Cookie cookie : cookies) {
        if (cookie.getName().equals("email")) {
          email = cookie.getValue();
          break;
        }
      }
    }
    model.addAttribute("email", email);
  }
  
  @PostMapping("login")
  public String login(HttpServletRequest request, HttpServletResponse response,
      String email, String password, String saveEmail) throws Exception {
    Cookie cookie = new Cookie("email", email);
    if (saveEmail != null) {
      cookie.setMaxAge(60 * 60 * 24 * 30);
    } else {
      cookie.setMaxAge(0);
    }
    
    response.addCookie(cookie);
    
    Member member = memberService.login(email, password);
    
    if (member != null) {
      
      request.getSession().setAttribute("loginUser", member);
      return "redirect:/";
      
    } else {
      throw new Exception("로그인에 실패하였습니다. <br>아이디 혹은 비밀번호를 확인해주세요.");
    }
  } 
  
  @GetMapping("logout")
  public String logout(HttpSession session) {
    session.invalidate();
    return "redirect:/";
  }
  
  
}
