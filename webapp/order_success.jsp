<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order Success</title>
<%@ include file="all_component/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
<%@ include file="all_component/navbar.jsp"%>
<div class="container text-center mt-3">
<i class="fa-solid fa-circle-check fa-5x text-success"></i>
<h1> Thank You</h1>
<h2>Your Order Successfully Placed</h2>
<h4>With in 7 Days Your Order Will Be Delivered In Your Address</h5>
<a href = "index.jsp"  class = "btn btn-primary mt-3">Home</a>
<a href = "oreder.jsp" class = "btn btn-danger mt-3">View Order</a> </div>



</body>
</html>