<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"
	errorPage="error.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
  response.setStatus(200);
%>

<section>
<div class="container">

<div class="row">

<h2 class="h4 mb-4 font-weight-normal ml-4 text-muted">${error}</h2>
<hr>

<h2>다음으로 돌아가주세요</h2>

<ul>

<li>
<i></i><a href="${pageContext.request.getContextPath()}"
 class="link-muted">메인페이지 </a>
</li>

</ul>


</div>
</div>
</section>

<hr>
<pre style="background-color: white; color: black;">${errorDetail}</pre>