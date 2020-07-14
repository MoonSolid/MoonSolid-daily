<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div class="container-fluid" style="padding: 50px 0px;">

	<div class="row">

		<c:if test="${not empty board}">

			<div class="container" style="width: 55%;">
				<h1>게시글수정</h1>
				<form action='update' id="form1" method='post'
					enctype='multipart/form-data'>

					<input name='boardNumber' type='hidden'
						value='${board.boardNumber}'><br>
					<p>
						<input id="title" type="text" placeholder="제목을 적어주세요"
							class="form-label-group form-control-clean col-md-11 mt--5"
							value='${board.title}' name="title">
					</p>
					<!--------------------------------------------- 컨텐츠 ------------------------------------------------>

					<!---------------------------------------------내용------------------------------------------------->
					<textarea id="content" name='content' rows='10' cols='40'></textarea>
					<!--------------------------------------------/내용------------------------------------------------->


					<!-------------------------------------------- /컨텐츠 ------------------------------------------------>
					<br> <br>

					<div align="right" class="container-fluid">
						<button id="btn1"
							class="btn btn-outline-secondary btn-pill btn-sm mt-3">수정</button>
					</div>
				</form>

			</div>

		</c:if>

		<c:if test="${empty board}">
			<p>해당 게시글이 없습니다.</p>
		</c:if>

	</div>
</div>


