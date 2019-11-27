<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="../dbconn.jsp"%>
<link rel="stylesheet" href="../resources/css/bootstrap.min.css" />

<%
	request.setCharacterEncoding("utf-8");

	String p_name = request.getParameter("p_name");

	session.setAttribute("sessionPname", p_name);

	PreparedStatement pstmt = null;
	ResultSet rs = null;

	String sql = "select * from product where p_name=?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, p_name);

	rs = pstmt.executeQuery();

	if (rs.next()) {

		session.setAttribute("p_name", p_name);
%>
<script>
	location.href = '../product.jsp?p_name=<%=p_name%>';
</script>
<%
	} else {
%>
<script>
	alert('영화 없음');
	location.href = '../products.jsp';
	history.back();
</script>
<%
	}
%>