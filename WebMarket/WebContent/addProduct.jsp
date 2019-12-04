<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="https:macdn.bootstrapcdn.com/bootstrap/4.0.0/
css/bootstrap.min.css">
<script src="./resources/js/validation.js"></script>
<script type="text/javascript" src="./resources/js/jquery-3.4.1.js"></script>
<script type="text/javascript" src="./resources/js/validation.js"></script>
<title>영화 등록</title>
</head>
<body style="background-color: #000;">
	<fmt:setLocale value='<%=request.getParameter("language")%>' />
	<fmt:bundle basename="resourceBundle.message">
		<jsp:include page="Menu.jsp" />
		<div class="jumbotron" style="background-color: #000;">
			<div class="container">
				<span style="color: white" class="display-3"><fmt:message
						key="title" /></span>
			</div>
		</div>
		<hr color="pink">
		<div class="container" style="color: white;">
			<div class="text-right">
				<p>
					<a href="?language=ko">ko</a> || <a href="?language=en">en</a>
				</p>
			</div>
			<form name="newProduct" action="./processAddProduct.jsp"
				class="form-horizontal" method="post" enctype="multipart/form-data">
				<div class="form-group row">
					<label class="col-sm-2"><fmt:message key="productId" /></label>
					<div class="col-sm-3">
						<input type="text" id="productId" name="productId"
							class="form-control">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2"><fmt:message key="pname" /></label>
					<div class="col-sm-3">
						<input type="text" id="name" name="name" class="form-control">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2"><fmt:message key="unitPrice" /></label>
					<div class="col-sm-3">
						<input type="text" id="unitPrice" name="unitPrice"
							class="form-control">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2"><fmt:message key="description" /></label>
					<div class="col-sm-3">
						<textarea name="description" cols="50" rows="2"
							class="form-control" maxlength="40"></textarea>
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2"><fmt:message key="manufacturer" /></label>
					<div class="col-sm-3">
						<input type="text" name="manufacturer" class="form-control">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2"><fmt:message key="category" /></label>
					<div class="col-sm-3">
						<input type="text" name="category" class="form-control">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2"><fmt:message key="unitsInStock" />
					</label>
					<div class="col-sm-3">
						<input type="text" id="unitsInStock" name="unitsInStock"
							class="form-control">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2"><fmt:message key="condition" /></label>
					<div class="col-sm-3">
						<input type="radio" name="condition" value="New ">
						<fmt:message key="condition_New" />
						<input type="radio" name="condition" value="Old">
						<fmt:message key="condition_Old" />
						<input type="radio" name="condition" value="Refurbished">
						<fmt:message key="condition_Refurbished" />
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2"><fmt:message key="productImage" /></label>
					<div class="col-sm-3">
						<input type="file" name="productImage" class="form-control">
					</div>
					<div class="col-sm-offset-2 col-sm-10">
						<input type="submit" id="sum" class="btn btn-danger"
							value="<fmt:message key="button" />">
					</div>
				</div>
			</form>
		</div>
	</fmt:bundle>
	<jsp:include page="Footer.jsp" />

</body>
</html>