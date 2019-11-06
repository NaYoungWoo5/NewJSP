<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>페이지 오류</title>
</head>
<body style="background-color: #000;">
	<jsp:include page="Menu.jsp" />
		<div class="container">
			<h2 style="color: white" class="alert alert-danger">요청하신 페이지를 찾을 수 없습니다.</h2>
		</div>
	<hr color="red">
	<div class="container">
		<p><%=request.getRequestURL()%></p>
		<p>
			<a href="products.jsp" class="btn btn-secondary">상품 목록 &raquo;</a>
	</div>
</body>
</html>