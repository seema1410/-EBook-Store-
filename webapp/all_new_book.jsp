<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.List"%>
<%@ page import="com.DAO.BookDAOImpl"%>
<%@ page import="com.entity.BookDtls"%>
<%@ page import="com.DB.DBConnect"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="com.entity.User"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Recent view</title>
<%@include file="all_component/allCss.jsp"%>
<style type="text/css">
.back-img {
	background: url("img/c.jpg");
	background-size: cover;
	background-repeat: no-repeat;
	height: 60vh;
	width: 100%;
	color: white;
}

.crd-ho:hover {
	background-color: #f5e7e4;
}

#toast {
	min-width: 300px;
	position: fixed;
	bottom: 30px;
	left: 50%;
	margin-left: -125px;
	background: #333;
	padding: 10px;
	color: white;
	text-align: center;
	z-index: 1;
	font-size: 18px;
	visibility: hidden;
	box-shadow: 0px 0px 0px #000;
}

#toast.display {
	visibility: visible;
	animation: fadeIn 0.5s, fadeOut 0.5s 2.5s;
}

@
keyframes fadeIn {from { bottom:0;
	opacity: 0;
}

to {
	bottom: 30px;
	opacity: 1;
}

}
@
keyframes fadeOut {from { bottom:30px;
	opacity: 1;
}

to {
	bottom: 0;
	opacity: 0;
}
}
</style>
</head>
<body>
	<%
	User u = (User) session.getAttribute("userobj");
	%>
	<c:if test="${not empty addcart}">
		<div id="toast">${addcart}</div>
		<script type="text/javascript">
		function showToast(content) {
			$('#toast').addClass("display");
			$('#toast').html(content);
			setTimeout(() => {
				$("#toast").removeClass("display");
			}, 2000)
		}
		showToast(); 
	</script>
		<c:remove var="addcart" scope="session" />
	</c:if>
	<%@ include file="all_component/navbar.jsp"%>
	<div class="card-body">
		<h3 class="text-center">New Books</h3>
		<div class="container-fluid">
			<div class="row p-3">
				<%
				BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
				List<BookDtls> list = dao.getAllNewBook();
				for (BookDtls b : list) {
				%>
				<div class="col-md-3">
					<div class="card crd-ho">
						<div class="card-body text-center">
							<img alt="" src="book/<%=b.getPhotoName()%>"
								style="width: 150px; height: 200px" class="img-thumblin">
							<p><%=b.getBookName()%></p>
							<p><%=b.getAuthor()%></p>
							<p>
								Category:
								<%=b.getBookCategory()%></p>
							<%
							if (b.getBookCategory().equals("old")) {
							%>
							<a href="" class="btn btn-success btn-sm ml-1">View Details</a> <a
								href="" class="btn btn-danger btn-sm ml-1"><i
								class="fa-solid fa-indian-rupee-sign"></i> <%=b.getPrice()%></a>
							<%
							} else {
							%>
							<div class="row justify-content-center text-center">
								<%
								if (u == null) {
								%>
								<a href="login.jsp" class="btn btn-danger btn-sm ml-2"><i
									class="fa-solid fa-cart-shopping"></i> Add Cart</a>
								<%
								} else {
								%>
								<a href="cart?bid=<%=b.getBookId()%>&uid=<%=u.getId()%>"
									class="btn btn-danger btn-sm"><i
									class="fa-solid fa-cart-shopping"></i> Add Cart</a>
								<%
								}
								%>
								<a href="view_books.jsp?bid=<%=b.getBookId()%>" class="btn btn-success btn-sm ml-1">View Details</a>
								<a href="" class="btn btn-danger btn-sm ml-1"><i
									class="fa-solid fa-indian-rupee-sign"></i> <%=b.getPrice()%></a>
							</div>
							<%
							}
							%>
						</div>
					</div>
				</div>
				<%
				}
				%>
			</div>
		</div>
	</div>
</body>
</html>