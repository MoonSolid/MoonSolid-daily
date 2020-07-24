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
			
			조회수 : ${board.viewCount} <br>
			내용 : ${board.content} <br>
			
			<!----------------------------------------- 남은시간 ------------------------------------------------>
			<div class="col-12 col-xl-6 mb-3">
				<div style="text-align: center">

					<div>
						<span class="font-weight-medium">
						<h4>남은시간</h4></span>
					</div>

					<div>
						<div>
							<div class="col my-3">
								<p class="text-gray-900 mb-1 ml-3">
								<p id="timer" style="text-clolor: red"></p>
								시작일 | ${board.startDated} <br>
								마감일 | ${board.endDated} <br>

							</div>
						</div>
					</div>

				</div>
			</div>
			<!----------------------------------------- /남은시간 ------------------------------------------------>
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

<script>
<%------------------------------------------타이머 ------------------------------------------------%>
//마감일
var endDate = new Date('${board.endDated}');
endDate.setHours(0, 0, 0, 0);
console.log(endDate);
//남은 날짜
var now = new Date();
var gap = now.getTime() - endDate.getTime();
var result = Math.floor(gap / (1000 * 60 * 60 * 24)) * -1;

$(document).ready(function() {
	tid = setInterval('msg_time()', 1000); // 타이머 1초간격으로 수행
});

var stDate = new Date();
var edDate = new Date(endDate).getTime(); // 종료날짜
var RemainDate = edDate - stDate;
console.log(RemainDate + '테스트');
function msg_time() {
	var hours = Math.floor((RemainDate % (1000 * 60 * 60 * 24))
			/ (1000 * 60 * 60));
	var miniutes = Math
			.floor((RemainDate % (1000 * 60 * 60)) / (1000 * 60));
	var seconds = Math.floor((RemainDate % (1000 * 60)) / 1000);

	if (hours < 10)
		hours = "0" + hours;

	if (miniutes < 10)
		miniutes = "0" + miniutes;

	if (seconds < 10)
		seconds = "0" + seconds;

	m = result - 1 + "일  " + hours + ":" + miniutes + ":" + seconds; // 남은 시간 text형태로 변경

	document.all.timer.innerHTML = "<b><font color='red' size='6px'>" + m
			+ "</font></b>"; // div 영역에 보여줌

	if (RemainDate < 0) {
		// 시간이 종료 되었으면
		clearInterval(tid); // 타이머 해제
	} else {
		RemainDate = RemainDate - 1000; // 남은시간 -1초
	}
}
<%------------------------------------------/타이머 ------------------------------------------------%>
</script>
