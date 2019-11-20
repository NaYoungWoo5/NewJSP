<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String id = (String) session.getAttribute("id");
%>
<nav class="navbar navbar-expand navbar-dark"
	style="background-color: #000;">
	<div class="logo">
		<a href="../products.jsp" style="margin-right: 100px"> <img
			src="https://image.flaticon.com/icons/svg/870/870910.svg" width="50"
			height="50">
		</a>
	</div>
	<div>
		<ul class="navbar-nav mr-auto">
			<li class="nav-item"><a class="nav-link"
				href="<c:url value = "/products.jsp"/>">상품 목록</a></li>
			<li class="nav-item"><a class="nav-link"
				href="<c:url value = "/addProduct.jsp"/>">상품 등록</a></li>
			<li class="nav-item"><a class="nav-link"
				href="<c:url value = "/editProduct.jsp?edit=update"/>">상품 수정</a></li>
			<li class="nav-item"><a class="nav-link"
				href="<c:url value = "/editProduct.jsp?edit=delete"/>">상품 삭제</a></li>
			<li class="nav-item"><a class="nav-link"
				href="<c:url value ="/BoardListAction.do?pageNum=1"/>">게시판</a></li>
		</ul>
	</div>
	<form class="form-inline my-2 my-lg-0" action="search.jsp" method=post"">



		<input class="form-control mr-sm-2" type="search"
			placeholder="영화를 검색해 보세요." aria-label="Search" name="search">
		<button class="btn btn-danger" type="submit"
			style="margin-right: 295px;" onclick="search()">검색</button>
	</form>
	<c:choose>
		<c:when test="${empty sessionId }">
			<li class="nav-item"><a class="nav-link"
				href="<c:url
						value="./member/loginMember.jsp"/>">로그인</a></li>
			<li class="nav-item"><a class="nav-link"
				href="<c:url value = "./member/addMember.jsp"/>">회원 가입</a></li>
		</c:when>
		<c:otherwise>
			<li style="color: white">[<%=id%>님]
			</li>
			<li class="nav-item"><a class="nav-link"
				href="<c:url value="./member/logoutMember.jsp"/>">로그아웃</a></li>
			<a href="./member/updateMember.jsp?id=<%=id%>"
				class="btn btn-success" role="button">회원 수정 &raquo;</a>
		</c:otherwise>
	</c:choose>
	<a href="./cart.jsp" class="btn btn-warning">장바구니 &raquo;</a>
</nav>
<hr color="red">