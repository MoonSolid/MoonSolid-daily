package com.daily.web;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
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
import org.springframework.web.multipart.MultipartFile;
import com.daily.domain.Board;
import com.daily.domain.BoardPhoto;
import com.daily.service.BoardService;
import net.coobird.thumbnailator.ThumbnailParameter;
import net.coobird.thumbnailator.Thumbnails;
import net.coobird.thumbnailator.name.Rename;

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
  public String add(Board board,MultipartFile[] boardPhotos)  throws Exception {
    
    ArrayList<BoardPhoto> photos = new ArrayList<>();
    String dirPath = servletContext.getRealPath("/upload/board");
    for (MultipartFile photoFile : boardPhotos) {
      if(photoFile.getSize() <= 0) {
        continue;
      }
      String filename = UUID.randomUUID().toString();
      photoFile.transferTo(new File(dirPath + "/" + filename));
      photos.add(new BoardPhoto().setFilePath(filename));
      
      Thumbnails.of(dirPath + "/" + filename)//
      .size(300, 300)//
      .outputFormat("jpg")//
      .toFiles(new Rename() {
        @Override
        public String apply(String name, ThumbnailParameter param) {
          return name + "_300x300";
        }
      });
    }
    board.setPhotos(photos);
    boardService.add(board);
    return "redirect:list";
  }

  @GetMapping("updateForm")
  public void updateForm(int no, Model model) throws Exception {
    model.addAttribute("board", boardService.get(no));
  }

  @PostMapping("update")
  public String update(Board board, //
      MultipartFile[] boardPhotos) throws Exception {
    ArrayList<BoardPhoto> photos = new ArrayList<>();
    String dirPath = servletContext.getRealPath("/upload/board");
    for (MultipartFile photoFile : boardPhotos) {
      if(photoFile.getSize() <= 0) {
        continue;
      }
      String filename = UUID.randomUUID().toString();
      photoFile.transferTo(new File(dirPath + "/" + filename));
      photos.add(new BoardPhoto().setFilePath(filename));
      
      Thumbnails.of(dirPath + "/" + filename)//
      .size(300, 300)//
      .outputFormat("jpg")//
      .toFiles(new Rename() {
        @Override
        public String apply(String name, ThumbnailParameter param) {
          return name + "_300x300";
        }
      });
    }
    if(photos.size() > 0) {
      board.setPhotos(photos);
    } else {
      board.setPhotos(null);
    }
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
    int listCount = boardService.listCount(board);
    model.addAttribute("boards", boards);
    model.addAttribute("listCount", listCount);

  }
  
  @GetMapping("listMore")
  public void listMore(@RequestParam(defaultValue = "1") int lastNo, Model model) throws Exception { 
    List<Board> boards = boardService.listMore(lastNo);
    model.addAttribute("boards",boards);
  }
  
  @GetMapping("search")
  public void search(String keyword, Model model) throws Exception {
    model.addAttribute("list", boardService.search(keyword));
  }

}
