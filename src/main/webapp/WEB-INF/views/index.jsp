<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<html lang="ko">
<head>
<meta charset="utf-8" />
<title>daily</title>
<meta name="description" content="...">
<meta name="viewport"
	content="width=device-width, maximum-scale=5, initial-scale=1, user-scalable=0">
<meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet"
  href="${pageContext.request.getContextPath()}/resources/assets/css/core.css">
</head>
<body>

	<div id="wrap">

		<div id="header">
			<p>header</p>
			
			<ul class="navbar-nav fs--14">
			
				<c:if test="${empty loginUser}">
					<li class="nav-item"><a class="nav-link text-secondary"
						href="/MoonSolid-daily/app/member/generalJoin"
						style="text-decoration: none; font-size: 1.1rem;">회원가입</a></li>

					<li
						class="list-inline-item ml--6 mr--6 float-start d-none d-lg-inline-block">
						<a target="_blank" href="/MoonSolid-daily/app/auth/loginForm"
						class="nav-link text-secondary" style="font-size: 1.1rem;">로그인</a>
					</li>
				</c:if>


				<c:if test="${not empty loginUser}">
					<li><a href="/MoonSolid-daily/app/auth/logout"
						class="prefix-icon-ignore dropdown-footer dropdown-custom-ignore font-weight-medium pt-3 pb-3">
							<i class="fi fi-power float-start"></i> Log Out
					</a></li>
					<li>
					${loginUser.name}님 환영합니다.
					</li>
				</c:if>

			</ul>
			
		</div>

		<div id="container">
			<p>container</p>
			<div>
			<a href="/MoonSolid-daily/app/board/list">
			게시글</a>
			</div>
		</div>

		<div id="footer">
			<p>footer</p>
		</div>

	</div>
	<script
		src="${pageContext.request.getContextPath()}/resources/assets/js/core.js"></script>
</body>
</html>