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
	<div id="index-wrapper">

		<div id="index-header">
			<div id="index-header1">
				<nav>
					<a class="navbar-brand" href="/MoonSolid-daily"><img
						src="${pageContext.request.getContextPath()}/resources/assets/images/logo/logo.png"
						alt="..." width="100%" height="100%"> </a>
				</nav>
			</div>
			<div id="index-header2">
				<ul id="index-main-menu">
					<li><a href="#">메인메뉴 1</a>
						<ul id="index-sub-menu">
							<li><a href="#">서브메뉴 1</a></li>
							<li><a href="#">서브메뉴 2</a></li>
							<li><a href="#">서브메뉴 3</a></li>
							<li><a href="#">서브메뉴 4</a></li>
						</ul></li>
					<li><a href="#">메인메뉴 2</a>
						<ul id="index-sub-menu">
							<li><a href="#">서브메뉴 1</a></li>
							<li><a href="#">서브메뉴 2</a></li>
							<li><a href="#">서브메뉴 3</a></li>
							<li><a href="#">서브메뉴 4</a></li>
						</ul></li>
					<li><a href="#">메인메뉴 3</a>
						<ul id="index-sub-menu">
							<li><a href="#">서브메뉴 1</a></li>
							<li><a href="#">서브메뉴 2</a></li>
							<li><a href="#">서브메뉴 3</a></li>
							<li><a href="#">서브메뉴 4</a></li>
						</ul></li>
					<li><a href="#">메인메뉴 4</a>
						<ul id="index-sub-menu">
							<li><a href="#">서브메뉴 1</a></li>
							<li><a href="#">서브메뉴 2</a></li>
							<li><a href="#">서브메뉴 3</a></li>
							<li><a href="#">서브메뉴 4</a></li>
						</ul></li>
				</ul>
			</div>


			<div id="index-header3">

				<ul id="index-auth">

					<c:if test="${empty loginUser}">
						<li><a href="/MoonSolid-daily/app/member/generalJoin">회원가입</a></li>

						<li>
							<a href="/MoonSolid-daily/app/auth/loginForm">로그인</a>
						</li>
					</c:if>


					<c:if test="${not empty loginUser}">
						<li><a href="/MoonSolid-daily/app/auth/logout"
							class="prefix-icon-ignore dropdown-footer dropdown-custom-ignore font-weight-medium pt-3 pb-3">
								<i class="fi fi-power float-start"></i> Log Out
						</a></li>
						<li>${loginUser.name}님환영합니다.</li>
					</c:if>

				</ul>

			</div>


		</div>


		<div id="index-container">
			<div>
				<a href="/MoonSolid-daily/app/board/list"> 게시글</a>
			</div>
		</div>
		<div id="index-footer">footer</div>

	</div>
	<script
		src="${pageContext.request.getContextPath()}/resources/assets/js/core.js"></script>
</body>
</html>