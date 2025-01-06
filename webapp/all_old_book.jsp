<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.List"%>
<%@ page import="com.DAO.BookDAOImpl"%>
<%@ page import="com.entity.BookDtls"%>
<%@ page import="com.DB.DBConnect"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.SQLException"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All old book view</title>
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
</style>
</head>
<body>
	<%@ include file="all_component/navbar.jsp"%>
	<div class="card-body">
		<h3 class="text-center">Old Books</h3>
		<div class="container-fluid">
			<div class="row p-3">
				<%
				BookDAOImpl dao3 = new BookDAOImpl(DBConnect.getConn());
				List<BookDtls> list3 = dao3.getAllOldBook();
				for (BookDtls b : list3) {
				%>
				<div class="col-md-3">
					<div class="card crd-ho">
						<div class="card-body text-center">
							<img alt="" src="book/<%=b.getPhotoName()%>"
								style="width: 150px; height: 200px" class="img-thumblin">
							<p><%=b.getBookName()%></p>
							<p><%=b.getAuthor()%></p>
							<p><%=b.getBookCategory()%></p>
							<div class="row justify-content-center text-center">
								<a href="view_books.jsp?bid=<%=b.getBookId()%>" class="btn btn-success btn-sm ml-1">View Details</a>
								<a href="" class="btn btn-danger btn-sm ml-1"><i
									class="fa-solid fa-indian-rupee-sign"></i>  <%=b.getPrice()%></a>
							</div>
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