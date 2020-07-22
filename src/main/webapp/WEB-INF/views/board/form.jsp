<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div class="container-fluid" style="padding: 50px 0px;">

	<div class="row">
		

		<div class="container" style="width: 55%;">
			<h1>게시글등록</h1>
			<form action='add' id="form1" method='post'
				enctype='multipart/form-data'>
        
			 	<p>		
						<input id="title"
            type="text" placeholder="제목을 적어주세요"
            class="form-label-group form-control-clean col-md-11 mt--5"
            name="title">
				</p>
				<!--------------------------------------------- 컨텐츠 ------------------------------------------------>

				<!---------------------------------------------내용------------------------------------------------->
				<textarea id="content" name='content' rows='10' cols='40'></textarea>
				<!--------------------------------------------/내용------------------------------------------------->
			 <br> 시작일* <input id="startDated" autocomplete="off" type='date'
						name='startDated' class="form-control datepicker">
             <br> 마감일* <input id="endDated" autocomplete="off" type='date'
						name='endDated' class="form-control datepicker">
				<!-------------------------------------------- /컨텐츠 ------------------------------------------------>
				<br> <br>

				<div align="right" class="container-fluid">
					<button id="btn1"
						class="btn btn-outline-secondary btn-pill btn-sm mt-3">등록</button>
				</div>
			</form>
			
		</div>
	</div>
</div>


