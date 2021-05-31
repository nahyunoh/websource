<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>장바구니 리스트 상품 : <%=session.getAttribute("product_list") %></h3>
	<div>
	<a href="product.jsp">상품선택 페이지</a>
	</div>
	<div>
	<a href="cartDel.jsp">장바구니 비우기</a>
	</div>
</body>
</html>