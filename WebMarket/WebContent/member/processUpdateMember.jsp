<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ include file="../dbconn.jsp"%>
<%
	ResultSet rs = null;
	PreparedStatement pstmt = null;
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String name = request.getParameter("name");
	String phone = request.getParameter("phone");

	/* 	session.setAttribute("login.id", id);
		session.setAttribute("login.password", password);
		session.setAttribute("login.name", name);
		session.setAttribute("login.phone", phone);
	 */
	out.println("id 는 " + id);
	//트라이
	try {
		String sql = "select * from member where id = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();
		// 5단계 rs 데이터있으면 id있음
		//   폼비밀번호 rs비밀번호 비교 맞으면 => 수정
		//                     틀리면 => 비밀번호틀림
		//            없으면 id없음
		out.println("next 는! " + rs.next() + " 이네시발 ");
		if (rs.next() == false) {
			//id있음
			String dbPass = rs.getString("password");
			if (password.equals(dbPass)) {
				sql = "update member set name=?, phone=? where id=? and password=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, name);
				pstmt.setString(2, phone);
				pstmt.setString(3, id);
				pstmt.setString(4, password);

				pstmt.executeUpdate();
				out.println("정보수정 성공!");
			} else {
				out.println("비밀번호 틀림!");
			}
			out.println("id로 들어왔다.");
		} else {
			out.println("id가 존재하지 않음!");
		}
		/* response.sendRedirect("../products.jsp"); */
	} catch (Exception e) {
		e.printStackTrace();
		out.println("tq왜 안돼");
	} finally {
	}
%>