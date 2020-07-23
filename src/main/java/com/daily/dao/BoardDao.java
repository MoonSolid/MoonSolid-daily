package com.daily.dao;

import java.util.List;

import com.daily.domain.Board;

public interface BoardDao {

  public int insert(Board board) throws Exception;

  public List<Board> findAll() throws Exception;

  public Board findByNo(int no) throws Exception;

  public int delete(int no) throws Exception;

  public int update(Board board) throws Exception;

  public int viewCount(int boardNumber) throws Exception;

  public int listCount() throws Exception;

  public List<Board> findMore(int lastNo) throws Exception;
  
  List<Board> findByKeyword(String keyword) throws Exception;

}
