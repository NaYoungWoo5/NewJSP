<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>상품 아이디 오류</title>
</head>
<body style="background-color: #000;">
	<jsp:include page="Menu.jsp" />
	<div class="jumbotron">
		<h2 style="color: white" class="alert alert-danger">해당 상품이 존재하지
			않습니다.</h2>
	</div>
	<hr color="red">
	<div class="container">
		<p><%=request.getRequestURL()%>?<%=request.getQueryString()%>
		<p>
			<a href="products.jsp" class="btn btn-secondary">상품 목록 &raquo;</a>
	</div>
</body>
</html>
