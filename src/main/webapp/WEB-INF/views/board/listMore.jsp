<%@ page import="com.daily.domain.Board"%>
<%@ page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:forEach items="${boards}" var="board" varStatus="status">
    <tr class="transition-all-ease-250 transition-hover-top h-100 bl-0 br-0 bb-0 bw--2 card-body posting" 
        id="tList" 
        onclick="location.href='detail?no=${board.boardNumber}'"
        style="color:black; cursor:pointer;">   
      <td>${board.boardNumber}</td>
      <td>${board.title}</td>
      <td>${board.content}</td>
      <td>${board.postingRegistration}</td> 
    </tr>
      </c:forEach>