package com.daily.web;

import java.util.List;
import javax.servlet.ServletContext;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.daily.domain.Board;
import com.daily.service.BoardService;

@Controller
@RequestMapping("/board")
public class BoardController {

  static Logger logger = LogManager.getLogger(BoardController.class);

  @Autowired
  ServletContext servletContext;

  @Autowired
  BoardService boardService;


  public BoardController() {
    logger.debug("BoardController 생성");
  }

  @GetMapping("form")
  public void Form() throws Exception {}

  @PostMapping("add")
  public String add(Board board) throws Exception {
    boardService.add(board);
    return "redirect:list";
  }

  @GetMapping("updateForm")
  public void updateForm(int no, Model model) throws Exception {
    model.addAttribute("board", boardService.get(no));
  }

  @PostMapping("update")
  public String update(Board board) throws Exception {
    boardService.update(board);
    return "redirect:list";
  }

  @GetMapping("delete")
  public String delete(int no) throws Exception {
    boardService.delete(no);
    return "redirect:list";
  }

  @GetMapping("detail")
  public void detail(@RequestParam(defaultValue = "1") int no, Model model) throws Exception {
    boardService.viewCount(no);
    model.addAttribute("board", boardService.get(no));
  }

  @GetMapping("list")
  public void list(Board board, Model model) throws Exception {
    List<Board> boards = boardService.list();
    model.addAttribute("boards", boards);
  }

}
