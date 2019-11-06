<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<%@ page errorPage="exceptionNoProductId.jsp"%>
<jsp:useBean id="productDAO" class="dao.ProductRepository"
	scope="session" />
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>영화 정보</title>
<script type="text/javascript">
	function addToCart() {
		if (confirm("상품을 장바구니에 추가하시겠습니까?")) {
			document.addForm.submit();
		} else {
			document.addForm.reset();
		}
	}
</script>
</head>
<body style="background-color: #000;">
	<jsp:include page="Menu.jsp" />
	<div class="jumbotron" style="background-color: #000;">
		<div class="container">
			<span style="color: white" class="display-3">영화 정보 </span>
		</div>
	</div>
	<hr color="red">
	<%
		String id = request.getParameter("id");
		ProductRepository dao = ProductRepository.getInstance();
		Product product = dao.getProductById(id);
	%>
	<div class="container">
		<div class="row">
			<div class="col-md-5">
				<img src="./image/<%=product.getFilename()%>" style="width: 100%">
			</div>
			<div class="col-md-6" style="color: white">
				<h3><%=product.getPname()%></h3>
				<p><%=product.getDescription()%>
				<p>
					<b>영화 코드 : </b><span class="badge-danger"> <%=product.getProductId()%></span>
				<p>

					<b>제작사</b> :
					<%=product.getManufacturer()%>
				<p>
					<b>분류</b> :
					<%=product.getCategory()%>
				<p>
					<b>재고 수</b> :
					<%=product.getUnitsInStock()%>
				<h4>
					<%=product.getUnitPrice()%>원
				</h4>
				<p>
				<form name="addForm"
					action="./addCart.jsp?id=<%=product.getProductId()%>" method="post">
					<a href="./cart.jsp" class="btn btn-danger" onclick="addToCart()">영화
						주문 &raquo;</a> <a href="./products.jsp" class="btn btn-secondary">영화
						목록 &raquo;</a>
				</form>
			</div>
		</div>
		<hr>
	</div>
	<jsp:include page="Footer.jsp" />

</body>
</html>