<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<link rel="stylesheet" href="../resources/css/bootstrap.min.css" />
<title>회원 수정</title>
</head>
<body style="background-color: #000;">
	<jsp:include page="../Menu.jsp" />
	<div class="container">
		<h1 style="color: white" class="display-3">회원 수정</h1>
		<hr color="red">
	</div>
	<%@ include file="../dbconn.jsp"%>
	<%
		String id = request.getParameter("id");

		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = "select * from member where id = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();
		if (rs.next()) {
	%>
	<div class="container">
		<div style="color: white" class="row">
			<div class="col-md-7">
				<form name="UpdateMember"
					action="./processUpdateMember.jsp?id=<%=id%>"
					class="form-horizontal" method="post">
					<div class="form-group row">
						<label class="col-sm-2">아이디</label>
						<div class="col-sm-3">
							<%=rs.getString("id")%>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">비밀번호</label>
						<div class="col-sm-3">
							<input type="text" id="password" name="password"
								class="form-control" value="<%=rs.getString("password")%>">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">이름</label>
						<div class="col-sm-3">
							<input type="text" id="name" name="name" class="form-control"
								value="<%=rs.getString("name")%>">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">폰</label>
						<div class="col-sm-3">
							<input type="text" id="phone" name="phone" class="form-control"
								value="<%=rs.getString("phone")%>">
						</div>
					</div>
					<div class="form-group row">
						<div class="col-sm-offset-2 col-sm-10">
							<input type="submit" class="btn btn-primary" value="수정">
						</div>
					</div>
				</form>
				<form name="deleteMember" action="./deleteMember.jsp?id=<%=id%>"
					class="form-horizontal" method="post">
					<input type="submit" class="btn btn-danger" value="삭제">
				</form>
			</div>
		</div>
	</div>
	<%
		}
		if (rs != null)
			rs.close();
		if (pstmt != null)
			pstmt.close();
		if (conn != null)
			conn.close();
	%>
</body>
</html>