package com.daily.service.impl;

import java.util.List;
import org.springframework.stereotype.Component;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.support.TransactionTemplate;
import com.daily.dao.BoardDao;
import com.daily.domain.Board;
import com.daily.service.BoardService;

@Component
public class BoardServiceImpl implements BoardService {

  TransactionTemplate transactionTemplate;
  BoardDao boardDao;

  public BoardServiceImpl(//
      PlatformTransactionManager txManager, //
      BoardDao boardDao) {
    this.transactionTemplate = new TransactionTemplate(txManager);
    this.boardDao = boardDao;
  }

  @Transactional
  @Override
  public void add(Board board) throws Exception {
    if (boardDao.insert(board) == 0) {
      throw new Exception("게시글 등록에 실패했습니다.");
    }
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
  }

  @Override
  public Board get(int no) throws Exception {
    return boardDao.findByNo(no);
  }

}