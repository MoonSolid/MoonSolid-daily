<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- HEADER -->
		<header id="header">
			<div id="header1">
				<nav>
					<a class="navbar-brand" href="/MoonSolid-daily"><img
						src="${pageContext.request.getContextPath()}/resources/assets/images/logo/logo.png"
						alt="..." width="100%" height="100%"> </a>
				</nav>
			</div>
			<div id="header2">
				<ul id="main-menu">
					<li><a href="#">메인메뉴 1</a>
						<ul id="sub-menu">
							<li><a href="#">서브메뉴 1</a></li>
							<li><a href="#">서브메뉴 2</a></li>
							<li><a href="#">서브메뉴 3</a></li>
							<li><a href="#">서브메뉴 4</a></li>
						</ul></li>
					<li><a href="#">메인메뉴 2</a>
						<ul id="sub-menu">
							<li><a href="#">서브메뉴 1</a></li>
							<li><a href="#">서브메뉴 2</a></li>
							<li><a href="#">서브메뉴 3</a></li>
							<li><a href="#">서브메뉴 4</a></li>
						</ul></li>
					<li><a href="#">메인메뉴 3</a>
						<ul id="sub-menu">
							<li><a href="#">서브메뉴 1</a></li>
							<li><a href="#">서브메뉴 2</a></li>
							<li><a href="#">서브메뉴 3</a></li>
							<li><a href="#">서브메뉴 4</a></li>
						</ul></li>
					<li><a href="#">메인메뉴 4</a>
						<ul id="sub-menu">
							<li><a href="#">서브메뉴 1</a></li>
							<li><a href="#">서브메뉴 2</a></li>
							<li><a href="#">서브메뉴 3</a></li>
							<li><a href="#">서브메뉴 4</a></li>
						</ul></li>
				</ul>
			</div>


			<div id="header3">

				<ul id="auth">

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


		</header>
<!-- /HEADER -->