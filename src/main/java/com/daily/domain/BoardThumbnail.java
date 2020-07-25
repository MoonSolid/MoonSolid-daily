package com.daily.domain;

import java.io.Serializable;

public class BoardThumbnail implements Serializable {
  private static final long serialVersionUID = 1L;

  private int boardThumbnailNumber;
  private int boardNumber;
  private String filePath;
  
  public BoardThumbnail() {}
  
  public BoardThumbnail(String filePath, int boardNunmber) {
    this.filePath = filePath;
    this.boardNumber = boardNunmber;
  }
  
  public BoardThumbnail(int boardThumbnailNumber, String filePath, int boardNumber)  {
    this(filePath, boardNumber);
    this.boardThumbnailNumber = boardThumbnailNumber;
  }

  @Override
  public String toString() {
    return "BoardThumbnail [boardThumbnailNumber=" + boardThumbnailNumber + ", boardNumber="
        + boardNumber + ", filePath=" + filePath + "]";
  }

  @Override
  public int hashCode() {
    final int prime = 31;
    int result = 1;
    result = prime * result + boardNumber;
    result = prime * result + boardThumbnailNumber;
    result = prime * result + ((filePath == null) ? 0 : filePath.hashCode());
    return result;
  }

  @Override
  public boolean equals(Object obj) {
    if (this == obj)
      return true;
    if (obj == null)
      return false;
    if (getClass() != obj.getClass())
      return false;
    BoardThumbnail other = (BoardThumbnail) obj;
    if (boardNumber != other.boardNumber)
      return false;
    if (boardThumbnailNumber != other.boardThumbnailNumber)
      return false;
    if (filePath == null) {
      if (other.filePath != null)
        return false;
    } else if (!filePath.equals(other.filePath))
      return false;
    return true;
  }

  public int getBoardThumbnailNumber() {
    return boardThumbnailNumber;
  }

  public void setBoardThumbnailNumber(int boardThumbnailNumber) {
    this.boardThumbnailNumber = boardThumbnailNumber;
  }

  public int getBoardNumber() {
    return boardNumber;
  }

  public void setBoardNumber(int boardNumber) {
    this.boardNumber = boardNumber;
  }

  public String getFilePath() {
    return filePath;
  }

  public void setFilePath(String filePath) {
    this.filePath = filePath;
  }
  
  
  
}
