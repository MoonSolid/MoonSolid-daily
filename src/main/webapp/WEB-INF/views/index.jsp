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

<!----------------------------------------------- 헤더 --------------------------------------------->
		<div id="index-header">
		
	
			<div id="index-header_menu">

<div id="index-header_inner">

		<div id="index-header_bookmark">
			<p style="font-size: 11px">BOOKMARK</p>
		</div>
		<div id="index-header_cart">
			<p style="font-size: 11px">CART</p>
		</div>
		<div id="index-header_mypage">
			<p style="font-size: 11px">MY PAGE</p>
		</div>
		<div id="index-header_auth">
		<c:if test="${empty loginUser}">
			<p id="index-header_login"><a href="/MoonSolid-daily/app/member/generalJoin" style="font-size:11px;">JOIN US</a></p>
			<p id="index-header_joinus"><a href="/MoonSolid-daily/app/auth/loginForm" style="font-size:11px;">LOGIN</a></p>
			</c:if>
			<c:if test="${not empty loginUser}">
			<p id="index-header_logout"><a href="/MoonSolid-daily/app/auth/logout" style="font-size:11px;">LOGOUT</a></p>			
			</c:if>
		</div>
			
						
					
		
</div>


	</div>

	<div id="index-header-logo">
		<nav>
			<a id="index-header_home" href="/MoonSolid-daily"><img
				src="${pageContext.request.getContextPath()}/resources/assets/images/logo/logo.png"
				alt="..."> </a>
		</nav>
	</div>

	<div id="index-header-category"></div>

	<hr>

		
		</div>			
        
        
<!---------------------------------------------- /헤더 --------------------------------------------->       
		</div>


		<div id="index-container">
		<hr>
			<div>
				<a href="/MoonSolid-daily/app/board/list"> 게시글</a>
			</div>
		</div>
		<div id="index-footer">
     <hr>
			<div id="index-footer_sns">
				<h2 style="text-align: center; padding: 50px 0px 0px;">SNS</h2>
				<hr>
			</div>

			<div id="index-footer_inner">
			    <hr>
				<div id="index-footer_CustomerCnter">CustomerCnter</div>
				<div id="index-footer_BankAccount">BankAccount</div>
				<div id="index-footer_Community">Community</div>
				<div id="index-footer_MemberShip">MemberShip</div>
				<div id="index-footer_Guide">Guide</div>
			</div>
            
			<div id="index-footer_company_info">
			<hr>
			conpanyInfo
			</div>

		</div>

	</div>
	<script
		src="${pageContext.request.getContextPath()}/resources/assets/js/core.js"></script>
</body>
</html>