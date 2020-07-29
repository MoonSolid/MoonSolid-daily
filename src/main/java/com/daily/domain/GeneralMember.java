package com.daily.domain;

import java.io.Serializable;

public class GeneralMember extends Member implements Serializable {

  private static final long serialVersionUID = 1L;
  
  private int number;
  
  public GeneralMember() {
    super();
  }

  @Override
  public String toString() {
    return "GeneralMember [number=" + number + "]";
  }

  @Override
  public int hashCode() {
    final int prime = 31;
    int result = super.hashCode();
    result = prime * result + number;
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
    GeneralMember other = (GeneralMember) obj;
    if (number != other.number)
      return false;
    return true;
  }

  public int getNumber() {
    return number;
  }

  public GeneralMember setNumber(int number) {
    this.number = number;
    return this;
  }
  
  
}
