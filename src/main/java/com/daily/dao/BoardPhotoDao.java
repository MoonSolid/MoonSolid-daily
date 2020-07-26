package com.daily.dao;

import java.util.List;
import com.daily.domain.Board;
import com.daily.domain.BoardPhoto;

public interface BoardPhotoDao {
  
  public int insert(Board board) throws Exception;

  List<BoardPhoto> findAll(int boardNumber) throws Exception;

  int deleteAll(int boardNumber) throws Exception;

}
