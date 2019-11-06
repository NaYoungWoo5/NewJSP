<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String sessionId = (String) session.getAttribute("sessionId");
%>
<nav class="navbar navbar-expand navbar-dark"
	style="background-color: #000;">
	<div class="logo">
		<a href="products.jsp" style="margin-right: 592px"> <img
			src="https://image.flaticon.com/icons/svg/870/870910.svg" width="50"
			height="50">
		</a>
	</div>
	<div>
		<ul class="navbar-nav mr-auto">
			<c:choose>
				<c:when test="${empty sessionId }">
					<li class="nav-item"><a class="nav-link"
						href="<c:url
						value="/member/loginMember.jsp" />">로그인</a></li>
					<li class="nav-item"><a class="nav-link"
						href='<c:url value = "/member/addMember.jsp"/>'>회원 가입</a></li>
					</c:when>
				<c:otherwise>
					<li style="padding-top: 7px; color: white">[<%=sessionId%>님]
					</li>
					<li class="nav-item"><a class="nav-link"
						href="<c:url value="/member/logoutMember.jsp"/>">로그아웃</a></li>
					<li class="nav-item"><a class="nav-link"
						href="<c:url value="/member/updateMember.jsp"/>">회원 수정</a></li>
				</c:otherwise>
			</c:choose>
			<li class="nav-item"><a class="nav-link"
				href="<c:url value = "/products.jsp"/>">상품 목록</a></li>
			<li class="nav-item"><a class="nav-link"
				href="<c:url value = "/addProduct.jsp"/>">상품 등록</a></li>
			<li class="nav-item"><a class="nav-link"
				href="<c:url value = "/editPrduct.jsp?edit=update"/>">상품 수정</a></li>
			<li class="nav-item"><a class="nav-link"
				href="<c:url value = "/editProduct.jsp?edit=delete"/>">상품 삭제</a></li>
		</ul>
	</div>
	<form class="form-inline my-2 my-lg-0" action="search.jsp" method=post"">
		<input class="form-control mr-sm-2" type="search"
			placeholder="영화를 검색해 보세요." aria-label="Search" name="search">
		<button class="btn btn-danger" type="submit"
			style="margin-right: 431px;" onclick="search()">검색</button>
	</form>
	<a href="./cart.jsp" class="btn btn-warning">장바구니 &raquo;</a>
</nav>
<hr color="red">