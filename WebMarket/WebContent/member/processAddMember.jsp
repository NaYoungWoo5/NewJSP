<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ include file="../dbconn.jsp"%>
<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String name = request.getParameter("name");
	String phone = request.getParameter("phone");
	/*	String birth = request.getParameter("birth");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		
		if (name.isEmpty())
			price = 0;
		else
			price = Integer.valueOf(name);
		
		if (address.isEmpty())
			stock = 0;
		else
			stock = Long.valueOf(address);
		 */
	PreparedStatement pstmt = null;

	String sql = "insert into member values(?,?,?,?)";

	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	pstmt.setString(2, password);
	pstmt.setString(3, name);
	pstmt.setString(4, phone);
	// 	pstmt.setString(5, birth);
	// 	pstmt.setString(6, email);
	// 	pstmt.setString(7, address);
	pstmt.executeUpdate();

	if (pstmt != null)
		pstmt.close();
	if (conn != null)
		conn.close();

	response.sendRedirect("../products.jsp");
%>