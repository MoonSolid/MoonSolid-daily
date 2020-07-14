<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:if test="${not empty board}">

  <hr>
    <h3>게시글 상세</h3>
    <hr>
    
	<!---------------------------------------content---------------------------------------------------->
	<div class="container">
		<br>
		<div style="width: 100%;">
			<!------------------------------------------제목---------------------------------------------------->
			<h4>제목 : ${board.title}<br>
				<!------------------------------------------/제목--------------------------------------------------->
			</h4>
			내용 : ${board.content}
			<hr>
			<br>
		</div>
		

		<br>

	

		
		
		<!----------------------------------------- 수정삭제 ------------------------------------------------>
			<div style="text-align: center">
				<a href='updateForm?no=${board.boardNumber}'
					class="btn btn-sm btn-outline-secondary btn-pill mb-3">수정</a>
				<a href='delete?no=${board.boardNumber}' id="delBtn"
					class="btn btn-sm btn-outline-secondary btn-pill mb-3">삭제</a>
			</div>
		<!----------------------------------------- /수정삭제 ------------------------------------------------>
		
	</div>
	
</c:if>
<!---------------------------------------/content--------------------------------------------------->

<c:if test="${empty board}">
	<p>해당 게시글이 없습니다.</p>
</c:if>


