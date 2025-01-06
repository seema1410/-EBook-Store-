<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Setting Page</title>
<%@ include file="all_component/allCss.jsp"%>
<style type="text/css">
a {
	text-decoration: none;
	color: black;
}

a:hover {
	text-decoration: none;
}
</style>
</head>
<body style="background-color: #f0f1f2;">
	<c:if test="${empty userobj }">
		<c:redirect url="login.jsp"/>
	</c:if>
	<%@ include file="all_component/navbar.jsp"%>
	<div class="container">
		<h3 class="text-center">Hello ${userobj.name}</h3>
		<div class="row p-5">
			<div class="col-md-4">
				<a href="sell_book.jsp">
					<div class="card">
						<div class="card-body text-center">
							<div class="text-primary">
								<i class="fa-solid fa-book-open fa-3x"></i>
							</div>
							<h3>Sell Old Book</h3>
						</div>
					</div>
				</a>
			</div>
			<div class="col-md-4">
				<a href="old_book.jsp">
					<div class="card">
						<div class="card-body text-center">
							<div class="text-primary">
								<i class="fa-solid fa-pen-to-square fa-3x"></i>
							</div>
							<h3>Edit Old Book</h3>
						</div>
					</div>
				</a>
			</div>


			<div class="col-md-4">
				<a href="edit_profile.jsp">
					<div class="card">
						<div class="card-body text-center">
							<div class="text-primary">
								<i class="fa-solid fa-address-card fa-3x"></i>
							</div>
							<h3>Login & Security(Edit Profile)</h3>
						</div>
					</div>

				</a>
			</div>

			

			<div class="col-md-6 mt-3">
				<a href="oreder.jsp">
					<div class="card">
						<div class="card-body text-center">
							<div class="text-danger">
								<i class="fa-solid fa-box-open fa-3x"></i>
							</div>
							<h3>My Order</h3>
							<p>Track Your Order</p>
						</div>
					</div>

				</a>
			</div>
			<div class="col-md-6 mt-3">
				<a href="helpline.jsp">
					<div class="card">
						<div class="card-body text-center">
							<div class="text-primary">
								<i class="fa-solid fa-headset fa-3x"></i>
							</div>
							<h3>Help Center</h3>
							<p>24*7 Service</p>
						</div>
					</div>

				</a>
			</div>



		</div>
	</div>

	<div style="margin-top: 165px;">
		<%@ include file="all_component/footer.jsp"%>
	</div>
</body>
</html>