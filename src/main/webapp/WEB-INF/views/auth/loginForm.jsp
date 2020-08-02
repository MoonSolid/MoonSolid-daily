<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>

<html lang="ko">
<head>
<meta charset="utf-8" />
<title>daily</title>
</head>

<body>

<div>

<form action="login" method="POST">
<div class="row" style="margin: 0px 0px 20px 0px;"></div>
<!-- 아이디 입력 -->
<div>
<input required placeholder="Email" name="email" type="text" class="form-control"
value="${email}"/>
</div>
<!-- /아이디 입력 -->

<!-- 비밀번호 입력 -->
<div>
<input required placeholder="Password" name="password" type="password"/>
</div>
<!-- /비밀번호 입력 -->

<div>
<button type="submit" class="btn btn-primary">로그인</button>
</div>

</form>

</div>

</body>
</html>