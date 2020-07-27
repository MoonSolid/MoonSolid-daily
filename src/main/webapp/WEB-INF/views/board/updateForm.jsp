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
					<!-----------------------------------------이미지---------------------------------------------------->
					<br>
					<div class="input-group">
						<div class="custom-file custom-file-primary">
							<input id="boardPhotos" name='boardPhotos' type="file"
								data-file-ext="jpg, png, gif, mp3"
								data-file-max-size-kb-per-file="30000"
								data-file-ext-err-msg="Allowed:"
								data-file-size-err-item-msg="File too large!"
								data-file-size-err-total-msg="Total allowed size exceeded!"
								data-file-toast-position="bottom-center"
								data-file-preview-container=".js-file-input-preview-single-container2"
								data-file-preview-img-height="auto"
								data-file-preview-show-info="false"
								data-file-btn-clear="a.js-file-upload-clear2"
								class="custom-file-input"> <label
								class="custom-file-label" for="boardPhotos">이미지 파일을
								선택하세요 * </label>
						</div>
					</div>

					<div class="js-file-input-preview-single-container2 ml--n6 mr--n6">
						<!-- preview container -->
					</div>

					<div class="mt-1">
						<a href="#"
							class="hide js-file-upload-clear2 btn btn-light btn-sm"> 이미지
							삭제 </a>
					</div>
					<!----------------------------------------/이미지---------------------------------------------------->
					<br> 시작일* <input id="startDated" autocomplete="off"
						placeholder="시작일" type='date' name='startDated'
						class="form-control datepicker" value='${board.startDated}'>
					<br> 마감일* <input id="endDated" autocomplete="off"
						placeholder="마감일" type='date' name='endDated'
						class="form-control datepicker" value='${board.endDated}'>

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


