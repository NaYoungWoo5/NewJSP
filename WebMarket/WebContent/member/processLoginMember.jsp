<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ include file="../dbconn.jsp"%>


<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String password = request.getParameter("password");

	session.setAttribute("sessionId", id);

	PreparedStatement pstmt = null;
	ResultSet rs = null;

	String sql = "select password from member where id=?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);

	rs = pstmt.executeQuery();

	if (rs.next()) {
		if (password.equals(rs.getString("password"))) {
			session.setAttribute("id", id);
			response.sendRedirect("../products.jsp");
		} else {
%>
<script>
	alert('패스워드 틀림');
	history.back();
</script>
<%
	}
	} else {
%>
<script>
	alert('아이디 없음');
	location.href = 'loginMember.jsp';
	history.back();
</script>
<%
	}
%>