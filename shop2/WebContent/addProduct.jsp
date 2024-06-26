<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="loginCheck.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품등록</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css">
</head>
<body>
	<%@ include file="menu.jsp"%> 
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품등록</h1>
		</div>
	</div>
	
	<div class="container">
		<form action="processAddProduct.jsp" name="newProduct" class="form-horizontal" method="post" enctype="multipart/form-data">
			<div class="form-group row">
				<label class="col-sm-2">상품 코드</label>
				<div class="col-sm-3">
					<input type="text" name="productId" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">상품명</label>
				<div class="col-sm-3">
					<input type="text" name="pname" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">상품 가격</label>
				<div class="col-sm-3">
					<input type="text" name="unitPrice" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">상품 설명</label>
				<div class="col-sm-3">
					<input type="text" name="description" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">제조사</label>
				<div class="col-sm-3">
					<input type="text" name="manufacturer" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">분류</label>
				<div class="col-sm-3">
					<input type="text" name="category" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">재고 개수</label>
				<div class="col-sm-3">
					<input type="text" name="unitsInStock" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">상품 상태</label>
				<div class="col-sm-5">
					<input type="radio" name="condition" value="신상품"> 신상품
					<input type="radio" name="condition" value="중고"> 중고
					<input type="radio" name="condition" value="재생품"> 재생품
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">상품 이미지 추가</label>
				<div class="col-sm-5">
					<input type="file" name="productImage">
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<input type="submit" class="btn btn-primary" value="등록">
				</div>
			</div>
		</form>
	</div>
	
	<%@ include file="footer.jsp"%>
</body>
</html>