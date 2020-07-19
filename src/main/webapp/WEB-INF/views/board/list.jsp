<%@ page import="com.daily.domain.Board"%>
<%@ page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="container" style="text-align:center; padding: 30px 0px;" >
<h1 style="font-weight:bold; text-align:left; font-size:1.8rem; margin-left:1rem;">게시글 목록</h1>

<hr>
<p style="text-align:left">
전체게시글  (<c:out value="${listCount}"/>) 개
<p>
<!------------------------------------게시글목록------------------------------------------------------>
<div>
<table id="listTable" class="table table-striped table-hover" border="1">
	<thead>
	  <th>번호</th>
		<th>제목</th>
		<th>내용</th>
		<th>등록일</th>
	</thead>

	<tbody>	
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
  </tbody>
</table>
</div>
<!-----------------------------------/게시글목록------------------------------------------------------>
<!--------------------------------------더보기------------------------------------------------------->
<button id="moreListBtn" 
        class="container py-1 btn btn-secondary btn-lg btn-block" 
        style="width: 300px;height: 50px;margin-bottom: 1.3rem;">더보기
</button>

<!-------------------------------------/더보기------------------------------------------------------->

<hr>
<!-----------------------------------글쓰기---------------------------------------------------------->
<div style="text-align:right">
<a href='form' class="btn btn-outline-dark btn-pill mb-1">글쓰기</a>
</div>
<!----------------------------------/글쓰기---------------------------------------------------------->
<br>
</div>

<script>
<%-------------------------------------------더보기 ------------------------------------------------%>
var tag1 = document.getElementById("moreListBtn");
var tbody = document.querySelector("#listTable > tbody");

tag1.onclick = function() {
  var lastNo = parseInt(document.querySelector("#listTable > tbody > tr:last-child > td:nth-child(1)").innerHTML);
  var xhr = new XMLHttpRequest();
  xhr.open('GET', 'listMore?lastNo=' + lastNo, false);
  xhr.send();
  tbody.innerHTML = tbody.innerHTML + xhr.responseText;
  
  if(xhr.responseText == "") {
    Swal.fire({
      title : '더이상 게시글이 없습니다.',
      icon : 'warning',
      timer : 3000
    })
  }
};
<%------------------------------------------/더보기 ------------------------------------------------%>
</script>
