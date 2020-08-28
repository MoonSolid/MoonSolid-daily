<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- HEADER -->
<header id="header">

	<div id="header_menu">

<div id="header_inner">

		<div id="header_bookmark">
			<p style="font-size: 11px">BOOKMARK</p>
		</div>
		<div id="header_cart">
			<p style="font-size: 11px">CART</p>
		</div>
		<div id="header_mypage">
			<p style="font-size: 11px">MY PAGE</p>
		</div>
		<div id="header_auth">
		<c:if test="${empty loginUser}">
			<p id="header_login"><a href="/MoonSolid-daily/app/member/generalJoin" style="font-size:11px;">JOIN US</a></p>
			<p id="header_joinus"><a href="/MoonSolid-daily/app/auth/loginForm" style="font-size:11px;">LOGIN</a></p>
			</c:if>
			<c:if test="${not empty loginUser}">
			<p id="header_logout"><a href="/MoonSolid-daily/app/auth/logout" style="font-size:11px;">LOGOUT</a></p>			
			</c:if>
		</div>
			
						
					
		
</div>


	</div>

	<div id="header-logo">
		<nav>
			<a id="header_home" href="/MoonSolid-daily"><img
				src="${pageContext.request.getContextPath()}/resources/assets/images/logo/logo.png"
				alt="..."> </a>
		</nav>
	</div>

	<div id="header-category"></div>

	<hr>

</header>
<!-- /HEADER -->