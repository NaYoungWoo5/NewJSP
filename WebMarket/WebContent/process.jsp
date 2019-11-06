<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Implicit Objects</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String userid = request.getParameter("id");
		String password = request.getParameter("psw");

		if (userid.equals("aaa") && password.equals("1234")
				|| userid.equals("tmdahr") && password.equals("tmdahr123")) {
			response.sendRedirect("products.jsp");
		} else {
			response.sendRedirect("login.jsp");
		}
	%>
</body>
</html>