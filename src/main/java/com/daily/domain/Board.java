package com.daily.domain;

import java.io.Serializable;
import java.sql.Date;

public class Board implements Serializable {
  private static final long serialVersionUID = 1L;

  private int boardNumber;
  private String title;
  private int viewCount;
  private String content;
  private Date postingRegistration;

  @Override
  public String toString() {
    return "Board [boardNumber=" + boardNumber + ", title=" + title + ", viewCount=" + viewCount
        + ", content=" + content + ", postingRegistration=" + postingRegistration + "]";
  }


  @Override
  public int hashCode() {
    final int prime = 31;
    int result = 1;
    result = prime * result + boardNumber;
    result = prime * result + ((content == null) ? 0 : content.hashCode());
    result = prime * result + ((postingRegistration == null) ? 0 : postingRegistration.hashCode());
    result = prime * result + ((title == null) ? 0 : title.hashCode());
    result = prime * result + viewCount;
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
    Board other = (Board) obj;
    if (boardNumber != other.boardNumber)
      return false;
    if (content == null) {
      if (other.content != null)
        return false;
    } else if (!content.equals(other.content))
      return false;
    if (postingRegistration == null) {
      if (other.postingRegistration != null)
        return false;
    } else if (!postingRegistration.equals(other.postingRegistration))
      return false;
    if (title == null) {
      if (other.title != null)
        return false;
    } else if (!title.equals(other.title))
      return false;
    if (viewCount != other.viewCount)
      return false;
    return true;
  }



  public int getBoardNumber() {
    return boardNumber;
  }

  public void setBoardNumber(int boardNumber) {
    this.boardNumber = boardNumber;
  }

  public String getTitle() {
    return title;
  }

  public void setTitle(String title) {
    this.title = title;
  }

  public int getViewCount() {
    return viewCount;
  }

  public void setViewCount(int viewCount) {
    this.viewCount = viewCount;
  }

  public String getContent() {
    return content;
  }

  public void setContent(String content) {
    this.content = content;
  }

  public Date getPostingRegistration() {
    return postingRegistration;
  }

  public void setPostingRegistration(Date postingRegistration) {
    this.postingRegistration = postingRegistration;
  }



}
