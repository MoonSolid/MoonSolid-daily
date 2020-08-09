<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"
	errorPage="error.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
response.setStatus(200);
%>

<section>

<div>

<hr>

<h2 class="h4 mb-4 font-weight-normal">페이지를 찾을 수 없습니다.
					</h2>

<ul>

<li>
<i></i><a href="${pageContext.request.getContextPath()}"
 class="link-muted">메인페이지 </a>
</li>

</ul>

</div>

</section>