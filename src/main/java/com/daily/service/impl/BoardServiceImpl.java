package com.daily.service.impl;

import java.util.List;
import org.springframework.stereotype.Component;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.support.TransactionTemplate;
import com.daily.dao.BoardDao;
import com.daily.dao.BoardPhotoDao;
import com.daily.domain.Board;
import com.daily.service.BoardService;

@Component
public class BoardServiceImpl implements BoardService {

  TransactionTemplate transactionTemplate;
  BoardDao boardDao;
  BoardPhotoDao boardPhotoDao;

  public BoardServiceImpl(//
      PlatformTransactionManager txManager, //
      BoardDao boardDao,
      BoardPhotoDao boardPhotoDao) {
    this.transactionTemplate = new TransactionTemplate(txManager);
    this.boardDao = boardDao;
    this.boardPhotoDao = boardPhotoDao;
  }

  @Transactional
  @Override
  public void add(Board board) throws Exception {
    if (boardDao.insert(board) == 0) {
      throw new Exception("게시글 등록에 실패했습니다.");
    }
    boardPhotoDao.insert(board);
  }

  @Override
  public List<Board> list() throws Exception {
    return boardDao.findAll();
  }

  @Override
  public void delete(int no) throws Exception {
    if (boardDao.delete(no) == 0) {
      throw new Exception("해당 번호의 게시글이 없습니다.");
    }
    boardPhotoDao.deleteAll(no);
  }

  @Override
  public Board get(int no) throws Exception {
    return boardDao.findByNo(no);
  }
  
  @Transactional
  @Override
  public void update(Board board) throws Exception {
    if (boardDao.update(board) == 0) {
      throw new Exception("게시글 업데이트에 실패했습니다.");
    }
    if (board.getPhotos() != null) {
      boardPhotoDao.deleteAll(board.getBoardNumber());
      boardPhotoDao.insert(board);
    }
  }

  @Override
  public int viewCount(int boardNumber) throws Exception {
    return boardDao.viewCount(boardNumber);
  }


  @Override
  public int listCount(Board board) throws Exception {
    return boardDao.listCount();
  }

  @Override
  public List<Board> listMore(int lastNo) throws Exception {
    return boardDao.findMore(lastNo);
  }
  
  @Override
  public List<Board> search(String keyword) throws Exception {
    return boardDao.findByKeyword(keyword);
  }

}
