<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.ArrayList"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>NET</title>
<style>
a {
	text-decoration: none;
	color: #000000
}
</style>

</head>
<body style="background-color: #000;">
	<jsp:include page="Menu.jsp" />
	<div class="jumbotron" style="background-color: #000;">
		<div class="container">
			<span style="color: white" class="display-3">영화 목록</span>
			<div style="color: white" ID="theDiv" align="center"></div>
		</div>
		<hr color="red">
	</div>
	<div class="container">
		<span style="color: white" class="display-5">추천하는 작품</span>
		<hr color="red">
		<div class="row" align="center">
			<%@include file="dbconn.jsp"%>
			<%
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				String sql = "select * from product";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while (rs.next()) {
			%>
			<div class="col-md-4">
				<a
					href="http://localhost:8080/WebMarket/image/<%=rs.getString("p_fileName")%>">
					<img src="./image/<%=rs.getString("p_fileName")%>"
					style="width: 100%">
				</a>
				<h3 style="color: white"><%=rs.getString("p_name")%></h3>
				<p style="color: white"><%=rs.getString("p_description")%>
				<p style="color: white"><%=rs.getString("p_UnitPrice")%>원
				<p>
					<a href="./product.jsp?p_name=<%=rs.getString("p_name")%>"
						class="btn btn-danger" role="button">영화 정보 &raquo;</a>
			</div>
			
			<%
				}
			%>
			<%
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			%>
		</div>
		<hr color="red">
		<div class="Cheat">
			<p>
				Cheat <a onMouseUp=window.open href="addProduct.jsp">영화 등록 </a> <a
					onMouseUp=window.open href="editProduct.jsp?edit=update"> 영화 수정
				</a> <a onMouseUp=window.open href="editProduct.jsp?edit=delete"> 영화
					삭제 </a> <a onMouseUp=window.open href="cart.jsp"> 장바구니 </a>
		</div>
	</div>
	<jsp:include page="Footer.jsp" />
</body>
</html>