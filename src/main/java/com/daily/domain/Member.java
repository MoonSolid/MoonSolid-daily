package com.daily.domain;

import java.io.Serializable;

public class Member implements Serializable {
  private static final long serialVersionUID = 1L;
  
  private int number;
  private int type;
  private String id;
  private String password;
  private String name;
  private String email;
  private String tel;
  
  @Override
  public String toString() {
    return "Member [number=" + number + ", type=" + type + ", id=" + id + ", password=" + password
        + ", name=" + name + ", email=" + email + ", tel=" + tel + "]";
  }
  

  @Override
  public int hashCode() {
    final int prime = 31;
    int result = 1;
    result = prime * result + ((email == null) ? 0 : email.hashCode());
    result = prime * result + ((id == null) ? 0 : id.hashCode());
    result = prime * result + ((name == null) ? 0 : name.hashCode());
    result = prime * result + number;
    result = prime * result + ((password == null) ? 0 : password.hashCode());
    result = prime * result + ((tel == null) ? 0 : tel.hashCode());
    result = prime * result + type;
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
    Member other = (Member) obj;
    if (email == null) {
      if (other.email != null)
        return false;
    } else if (!email.equals(other.email))
      return false;
    if (id == null) {
      if (other.id != null)
        return false;
    } else if (!id.equals(other.id))
      return false;
    if (name == null) {
      if (other.name != null)
        return false;
    } else if (!name.equals(other.name))
      return false;
    if (number != other.number)
      return false;
    if (password == null) {
      if (other.password != null)
        return false;
    } else if (!password.equals(other.password))
      return false;
    if (tel == null) {
      if (other.tel != null)
        return false;
    } else if (!tel.equals(other.tel))
      return false;
    if (type != other.type)
      return false;
    return true;
  }



  public int getType() {
    return type;
  }


  public Member setType(int type) {
    this.type = type;
    return this;
  }


  public String getEmail() {
    return email;
  }


  public Member setEmail(String email) {
    this.email = email;
    return this;
  }


  public String getTel() {
    return tel;
  }


  public Member setTel(String tel) {
    this.tel = tel;
    return this;
  }


  public int getNumber() {
    return number;
  }

  public Member setNumber(int number) {
    this.number = number;
    return this;
  }

  public String getId() {
    return id;
  }

  public Member setId(String id) {
    this.id = id;
    return this;
  }

  public String getPassword() {
    return password;
  }

  public Member setPassword(String password) {
    this.password = password;
    return this;
  }

  public String getName() {
    return name;
  }

  public Member setName(String name) {
    this.name = name;
    return this;
  }
  
  

}
