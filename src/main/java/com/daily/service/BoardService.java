package com.daily.service;

import java.util.List;

import com.daily.domain.Board;

public interface BoardService {

  void add(Board board) throws Exception;

  List<Board> list() throws Exception;

  void delete(int no) throws Exception;

  Board get(int no) throws Exception;

  void update(Board board) throws Exception;

  int viewCount(int boardNumber) throws Exception;

  int listCount(Board board) throws Exception;

  List<Board> listMore(int lastNo) throws Exception;
  
  List<Board> search(String keyword) throws Exception;
}
