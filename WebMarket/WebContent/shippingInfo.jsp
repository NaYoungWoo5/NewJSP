<%@ page contentType="text/html; charset=utf-8"%>

<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>배송 정보</title>
</head>
<body style="background-color: #000;">
	<jsp:include page="Menu.jsp" />
	<div>
		<div class="container">
			<h1 class="display-3" style="color: white">배송 정보</h1>
		</div>
		<hr color="red">
	</div>
	<div class="container" style="color: white">
		<form action="./processShippingInfo.jsp" class="form-horizontal"
			method="post">
			<input type="hidden" name="cartId"
				value="<%=request.getParameter("cartId")%>" />
			<div class="form-group row">
				<label class="col-sm-2">성명</label>
				<div class="col-sm-3">
					<input name="name" type="text" class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<lable class="col-sm-2">배송일</lable>
				<div class="col-sm-3">
					<input name="shippingDate" type="text" class="form-control" />(yyyy/mm/dd)
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">국가</label>
				<div class="col-sm-3">
					<input name="country" type="text" class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">우편번호</label>
				<div class="col-sm-3">
					<input name="zipCode" type="text" class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">주소</label>
				<div class="col-sm-5">
					<input name="addressName" type="text" class="form-control" />
				</div>
			</div>
			<hr color="red">
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<a href="./cart/jsp?cartId = <%=request.getParameter("cartId")%>"
						class="btn btn-secondary" role="button">이전</a> <input
						type="submit" class="btn btn-primary" value="등록" /> <a
						href="./checkOutCancelled.jsp" class="btn btn-secondary"
						role="button">취소</a>
				</div>
			</div>
		</form>
	</div>
</body>
</html>