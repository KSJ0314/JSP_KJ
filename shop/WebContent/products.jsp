<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="dto.Product"%>
<%@ page import="dto.ProductRepository"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>상품목록</title>
</head>
<body>
	<%@ include file="menu.jsp"%>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품목록</h1>
		</div>
	</div>
	<div class="container">
		<div class="row" align="center">
			<%
				ArrayList<Product> listOfProduct = new ProductRepository().getAllProducts();
				for (Product lp : listOfProduct) {
			%>
					<div class="col-md-4">
						<h3><%=lp.getPname()%></h3>
						<h3><%=lp.getDescription()%></h3>
						<h3><%=lp.getUnitPrice()%></h3>
					</div>
			<%
				}
			%>
		</div>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>











