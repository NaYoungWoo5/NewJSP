<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="../resources/css/bootstrap.min.css" />
<%@ include file="./dbconn.jsp"%>
<%
	String id = (String) session.getAttribute("id");
%>
<nav class="navbar navbar-expand navbar-dark"
	style="background-color: #000;">
	<ul class="navbar-nav mr-auto">
		<img src="https://image.flaticon.com/icons/svg/870/870910.svg"
			width="50" height="50">
	</ul>
	<ul class="navbar-nav mr-auto">
		<li class="nav-item"><a class="nav-link"
			href="<c:url value = "/products.jsp"/>">영화 목록</a></li>
	</ul>
	<ul class="navbar-nav mr-auto">
		<form class="form-inline my-2 my-lg-0" action="./search/search.jsp"
			method="post">
			<input type="text" class="form-control mr-sm-2"
				placeholder="영화 제목을 검색하세요." name='p_name' required autofocus>
			<button class="btn btn-danger" type="submit" onclick="search()">검색</button>
		</form>
	</ul>
	<ul class="navbar-nav mr-auto">
		<c:choose>
			<c:when test="${empty sessionId}">
				<li class="nav-item"><a class="nav-link"
					href="<c:url
						value="./member/loginMember.jsp"/>">로그인</a></li>
				<li class="nav-item"><a class="nav-link"
					style="margin-right: 100px"
					href="<c:url value = "./member/addMember.jsp"/>">회원 가입</a></li>
			</c:when>
			<c:otherwise>
				<li style="color: white">[<%=id%>님]
				</li>
				<li class="nav-item"><a class="nav-link"
					href="<c:url value="/BoardListAction.do?pageNum=1"/>">게시판</a></li>
				<li class="nav-item"><a class="nav-link"
					href="<c:url value = "/addProduct.jsp"/>">영화 등록</a></li>
				<li class="nav-item"><a class="nav-link"
					href="<c:url value = "/editProduct.jsp?edit=update"/>">영화 수정</a></li>
				<li class="nav-item"><a class="nav-link"
					href="<c:url value = "/editProduct.jsp?edit=delete"/>">영화 삭제</a></li>
				<li class="nav-item"><a class="nav-link"
					href="<c:url value="./member/logoutMember.jsp"/>">로그아웃</a></li>
				<li class="nav-item"><a class="nav-link"
					href="./member/updateMember.jsp?id=<%=id%>">회원 수정 </a></li>
				<li class="nav-item"><a class="nav-link" href="./cart.jsp">장바구니
						&raquo;</a></li>
			</c:otherwise>
		</c:choose>
	</ul>
</nav>
<hr color="red">

