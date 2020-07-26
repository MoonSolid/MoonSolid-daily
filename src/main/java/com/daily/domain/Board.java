package com.daily.domain;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;

public class Board implements Serializable {
  private static final long serialVersionUID = 1L;

  private int boardNumber;
  private String title;
  private int viewCount;
  private String content;
  private Date postingRegistration;
  private Date startDated;
  private Date endDated;
  List<BoardPhoto> photos;
  
  @Override
  public String toString() {
    return "Board [boardNumber=" + boardNumber + ", title=" + title + ", viewCount=" + viewCount
        + ", content=" + content + ", postingRegistration=" + postingRegistration + ", startDated="
        + startDated + ", endDated=" + endDated + ", photos=" + photos + "]";
  }

  @Override
  public int hashCode() {
    final int prime = 31;
    int result = 1;
    result = prime * result + boardNumber;
    result = prime * result + ((content == null) ? 0 : content.hashCode());
    result = prime * result + ((endDated == null) ? 0 : endDated.hashCode());
    result = prime * result + ((photos == null) ? 0 : photos.hashCode());
    result = prime * result + ((postingRegistration == null) ? 0 : postingRegistration.hashCode());
    result = prime * result + ((startDated == null) ? 0 : startDated.hashCode());
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
    if (endDated == null) {
      if (other.endDated != null)
        return false;
    } else if (!endDated.equals(other.endDated))
      return false;
    if (photos == null) {
      if (other.photos != null)
        return false;
    } else if (!photos.equals(other.photos))
      return false;
    if (postingRegistration == null) {
      if (other.postingRegistration != null)
        return false;
    } else if (!postingRegistration.equals(other.postingRegistration))
      return false;
    if (startDated == null) {
      if (other.startDated != null)
        return false;
    } else if (!startDated.equals(other.startDated))
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

  public Date getStartDated() {
    return startDated;
  }

  public void setStartDated(Date startDated) {
    this.startDated = startDated;
  }

  public Date getEndDated() {
    return endDated;
  }

  public void setEndDated(Date endDated) {
    this.endDated = endDated;
  }

  public List<BoardPhoto> getPhotos() {
    return photos;
  }

  public void setPhotos(List<BoardPhoto> photos) {
    this.photos = photos;
  }
  
 
  


}
