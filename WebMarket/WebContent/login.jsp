<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>Login</title>
</head>
<body style="background-color: #000;">
	<hr color="red">
	<div class="jumbotron" style="background-color: #000;">
		<div class="container">
			<span style="color: white" class="display-3">로그인</span>
		</div>
	</div>
	<hr color="red">
	<div class="container" align="center">
		<div class="col-md-4 col-md-offset-4">
			<span style="color: white" class="display-5">Please sign in</span>
			<%
				String error = request.getParameter("error");
				if (error != null) {
					out.println("<div class='alert alert-danger'>");
					out.println("아이디와 비밀번호를 확인해 주세요");
					out.println("</div>");
				}
			%>
			<form class="form-signin" action="j_security_check" method="post">
				<div class="form-group">
					<label for="inputUserName" class="sr-only">User Name</label> <input
						type="text" class="form-control" placeholder="ID"
						name='j_username' required autofocus>
				</div>
				<div class="form-group">
					<label for="inputPassword" class="sr-only">Password</label> <input
						type="password" class="form-control" placeholder="Password"
						name='j_password' required>
				</div>
				<button class="btn btn-danger" type="submit">로그인</button>
			</form>
		</div>
	</div>
</body>
</html>