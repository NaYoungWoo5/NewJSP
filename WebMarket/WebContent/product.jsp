<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page errorPage="exceptionNoProductId.jsp"%>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>상품 상세 정보</title>
<script type="text/javascript">
	function addToCart() {
		if (confirm("영화를 장바구니에 추가하시겠습니까?")) {
			document.addForm.submit();
		} else {
			document.addForm.reset();
		}
	}
</script>
</head>
<body style="background-color: #000;">
	<jsp:include page="Menu.jsp" />
	<div class="container">
		<h1 style="color: white" class="display-3">영화 정보</h1>
	</div>
	<hr color="red">
	<%@ include file="dbconn.jsp"%>
	<%
		String p_name = request.getParameter("p_name");

		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = "select * from product where p_name = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, p_name);
		rs = pstmt.executeQuery();
		if (rs.next()) {
	%>
	<div style="color: white" class="container">
		<div class="row">
			<div class="col-md-5">
				<img src="./image/<%=rs.getString("p_fileName")%>"
					style="width: 100%">
			</div>
			<div class="col-md-6">
				<h3><%=rs.getString("p_name")%></h3>
				<p><%=rs.getString("p_description")%>
				<p>
					<b>영화 코드 : </b><span class="badge-danger"> <%=rs.getString("p_id")%></span>
				<p>
					<b>제작사 : </b><%=rs.getString("p_manufacturer")%>
				<p>
					<b>분류 : </b>
					<%=rs.getString("p_category")%>
				<p>
					<b>재고 수 : </b>
					<%=rs.getLong("p_unitsInStock")%>
				
				<h4><%=rs.getString("p_UnitPrice")%>원
				</h4>
				<p>
				<form name="addForm"
					action="./addCart.jsp?id=<%=rs.getString("p_id")%>" method="post">
					<a href="./products.jsp" class="btn btn-success">영화 목록 &raquo;</a>
					<a href="./products.jsp" class="btn btn-danger"
						onclick="addToCart()">영화 구매 &raquo;</a>
				</form>
			</div>
		</div>
		<hr>
	</div>
	<jsp:include page="Footer.jsp"></jsp:include>
</body>
<%
	}
	if (rs != null)
		rs.close();
	if (pstmt != null)
		pstmt.close();
	if (conn != null)
		conn.close();
%>
</html>