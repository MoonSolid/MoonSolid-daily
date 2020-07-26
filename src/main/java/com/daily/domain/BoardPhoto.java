package com.daily.domain;

import java.io.Serializable;

public class BoardPhoto implements Serializable {
  private static final long serialVersionUID = 1L;

  private int boardPhotoNumber;
  private int boardNumber;
  private String filePath;
  
  public BoardPhoto() {}
  
  public BoardPhoto(String filePath, int boardNunmber) {
    this.filePath = filePath;
    this.boardNumber = boardNunmber;
  }
  
  public BoardPhoto(int boardPhotoNumber, String filePath, int boardNumber)  {
    this(filePath, boardNumber);
    this.boardPhotoNumber = boardPhotoNumber;
  }

  @Override
  public String toString() {
    return "BoardPhoto [boardPhotoNumber=" + boardPhotoNumber + ", boardNumber=" + boardNumber
        + ", filePath=" + filePath + "]";
  }

  @Override
  public int hashCode() {
    final int prime = 31;
    int result = 1;
    result = prime * result + boardNumber;
    result = prime * result + boardPhotoNumber;
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
    BoardPhoto other = (BoardPhoto) obj;
    if (boardNumber != other.boardNumber)
      return false;
    if (boardPhotoNumber != other.boardPhotoNumber)
      return false;
    if (filePath == null) {
      if (other.filePath != null)
        return false;
    } else if (!filePath.equals(other.filePath))
      return false;
    return true;
  }

  public int getBoardPhotoNumber() {
    return boardPhotoNumber;
  }

  public void setBoardPhotoNumber(int boardPhotoNumber) {
    this.boardPhotoNumber = boardPhotoNumber;
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

  public BoardPhoto setFilePath(String filePath) {
    this.filePath = filePath;
    return this;
  }


  
  
}
