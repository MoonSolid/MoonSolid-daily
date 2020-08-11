package com.daily.domain;

import java.io.Serializable;

public class Notice extends Board implements Serializable {
  private static final long serialVersionUID = 1L;
  
  private int noticeNumber;
  private String noticeName;
  
  @Override
  public String toString() {
    return "Notice [noticeNumber=" + noticeNumber + ", noticeName=" + noticeName + "]";
  }

  @Override
  public int hashCode() {
    final int prime = 31;
    int result = super.hashCode();
    result = prime * result + ((noticeName == null) ? 0 : noticeName.hashCode());
    result = prime * result + noticeNumber;
    return result;
  }

  @Override
  public boolean equals(Object obj) {
    if (this == obj)
      return true;
    if (!super.equals(obj))
      return false;
    if (getClass() != obj.getClass())
      return false;
    Notice other = (Notice) obj;
    if (noticeName == null) {
      if (other.noticeName != null)
        return false;
    } else if (!noticeName.equals(other.noticeName))
      return false;
    if (noticeNumber != other.noticeNumber)
      return false;
    return true;
  }

  public int getNoticeNumber() {
    return noticeNumber;
  }

  public Notice setNoticeNumber(int noticeNumber) {
    this.noticeNumber = noticeNumber;
    return this;
  }

  public String getNoticeName() {
    return noticeName;
  }

  public Notice setNoticeName(String noticeName) {
    this.noticeName = noticeName;
    return this;
  }
  
 
  
}
