<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>

<html lang="ko">
<head>
<meta charset="utf-8" />
<title>daily</title>
</head>

<style>
    #loginBox {
    position:relative;
    display: block;        
    width:500px;
    height:500px;
    border: 1px solid gray;
    float:left;
    margin-left:682px;
    margin-right:682px;
    padding:90px 0px 0px 0px;
    }
    
    #loginBtn {
        padding:80px 30px 20px 30px;
    }
    
    #container {
    width:100%;
    height:500px;
    margin-top:100px;
    margin-bottom:100px;
    }
    
    #link {
    display:inline-block;
    position:relative;
    line-geight:18px;  
    padding:25px 0px 0px 70px;
    font-size:12px;
    float:left;
    }
    
    #link > a{
    width:150px;
    padding:10px 5px;
    position:absolute;
    border:1px #ccc solid;
    display:inline-block;
    top:25px;
    margin-left:25px;
    font-size:12px;
    font-weight:bold;
    text-align:center;
    color:black;
    }
    </style>
<body>

<div id="container">



<div id="loginBox">
   <form action="login" method="POST">
   <p style="text-align:center; color:gray;">가입하신 아이디와 패스워드를 입력해주세요.</p>
<!-- 아이디 입력 -->
<div>
<input required placeholder="Email" name="email" type="text" class="form-control mb-1 ml-3 col-sm-11"
value="${email}"/>
</div>
<!-- /아이디 입력 -->

<!-- 비밀번호 입력 -->
<div>
<input required placeholder="Password" name="password" type="password" class="form-control mb-1 ml-3 col-sm-11"/>
</div>
<!-- /비밀번호 입력 -->

<div id="loginBtn">
<button type="submit" class="btn btn-outline-dark btn-lg btn-block">로그인</button>
</div>

<hr>

<p id="link">
회원가입을 하시면
<br>
다양한 혜택을 이용할 수 있습니다.
<a href="/MoonSolid-daily/app/member/generalJoin" style="font-size:11px;">회원가입</a>
</p>

</form> 
</div>
</div>
</body>
</html>