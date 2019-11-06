<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String usersc = request.getParameter("search");

		if (usersc.equals("챔피언")) {
			response.sendRedirect("http://localhost:8080/WebMarket/product.jsp?id=0529");
		} else if (usersc.equals("설국열차") || usersc.equals("열차")) {
			response.sendRedirect("http://localhost:8080/WebMarket/product.jsp?id=020529");
		} else {
			response.sendRedirect("http://localhost:8080/WebMarket/products.jsp");
		}
	%>
</body>
</html>