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
  
  <style>
  
  <style>
        
        #index-wrapper {
            width:100%;
            height:100%;
        }
        
        #index-header {
            width:100%;
            height:15%;
            background-color:pink;
        }
        
        #index-header > #index-header1 {
            width:15%;
            height:100%;
            background-color:red;
            float:left;
        }
        
        #index-header > #index-header2 {
            width:70%;
            height:100%; 
            background-color:plum;
            float:left;
        }
        
        #index-header > #index-header3 {
            width:15%;
            height:100%;
            background-color:darkgoldenrod;
            float:left;
        }
        
        #index-main-menu {
         width:100%;    
        }
        
        #index-main-menu,#index-sub-menu {
            margin:0;
            padding:0;
            list-style-type:none;
        }
        
        #index-main-menu > li {
            width:25%;
            float:left;            
        }
        
        #index-main-menu > li > a {            
            background-color:beige;
            font-size:0.85rem;
            text-align:center;
            padding:12px 36px;
            text-decoration:none;
            display:block;
            letter-spacing:0.05em;
            border-right: 1px solid rgba(0,0,0,0.15);
        }
        
        #index-sub-menu > li > a {                   
            text-decoration:none; 
        }
        
        #index-sub-menu {
            width:17.3%;
            position:absolute;
            background-color:blueviolet;
            visibility:hidden;
            opacity:0;
        }
        
        #index-sub-menu > li {           
            margin:0;
            padding:16px 28px;
            border-bottom: 1px solid rgba(0,0,0,0.15);
        }
        
        #index-main-menu > li:hover #index-sub-menu { 
            opacity:1;
            visibility:visible;
        }
        
    </style>
  
  </style>
  
</head>
<body>
	 <div id="index-wrapper">
       
                          <div id="index-header">
                            <div id="index-header1">logo</div>
                            <div id="index-header2">
                                <ul id="index-main-menu">
                                    <li><a href="#">메인메뉴 1</a>
                                    <ul id="index-sub-menu">
                                        <li><a href="#">서브메뉴 1</a></li>
                                        <li><a href="#">서브메뉴 2</a></li>
                                        <li><a href="#">서브메뉴 3</a></li>
                                        <li><a href="#">서브메뉴 4</a></li>
                                    </ul>
                                    </li>
                                    <li><a href="#">메인메뉴 2</a>
                                    <ul id="index-sub-menu">
                                        <li><a href="#">서브메뉴 1</a></li>
                                        <li><a href="#">서브메뉴 2</a></li>
                                        <li><a href="#">서브메뉴 3</a></li>
                                        <li><a href="#">서브메뉴 4</a></li>
                                    </ul>
                                    </li> 
                                    <li><a href="#">메인메뉴 3</a>
                                    <ul id="index-sub-menu">
                                        <li><a href="#">서브메뉴 1</a></li>
                                        <li><a href="#">서브메뉴 2</a></li>
                                        <li><a href="#">서브메뉴 3</a></li>
                                        <li><a href="#">서브메뉴 4</a></li>
                                    </ul>
                                    </li>
                                    <li><a href="#">메인메뉴 4</a>
                                    <ul id="index-sub-menu">
                                        <li><a href="#">서브메뉴 1</a></li>
                                        <li><a href="#">서브메뉴 2</a></li>
                                        <li><a href="#">서브메뉴 3</a></li>
                                        <li><a href="#">서브메뉴 4</a></li>
                                    </ul>
                                    </li>
                                </ul>
                            </div>
                            
                            
                            <div id="index-header3">
                            
                            <ul class="navbar-nav fs--14">
			
				<c:if test="${empty loginUser}">
					<li class="nav-item"><a class="nav-link text-secondary"
						href="/MoonSolid-daily/app/member/generalJoin"
						style="text-decoration: none; font-size: 1.1rem;">회원가입</a></li>

					<li
						class="list-inline-item ml--6 mr--6 float-start d-none d-lg-inline-block">
						<a href="/MoonSolid-daily/app/auth/loginForm"
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
                            
                            
                          </div>
                          
                          
                          <div id="index-container" style="width:100%; height:70%; background-color:gray;">
<div>
			<a href="/MoonSolid-daily/app/board/list">
			게시글</a>
			</div>
			</div>  
                          <div id="index-footer" style="width:100%; height:15%; background-color:skyblue;" >footer</div>                   
        
    </div>    
	<script
		src="${pageContext.request.getContextPath()}/resources/assets/js/core.js"></script>
</body>
</html>