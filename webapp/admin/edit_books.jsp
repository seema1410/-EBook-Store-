<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.List"%>
<%@ page import="com.DAO.BookDAOImpl"%>
<%@ page import="com.entity.BookDtls"%>
<%@ page import="com.DB.DBConnect"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.SQLException"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>admin: edit books</title>
<%@include file="allCss.jsp"%>
</head>
<body style="background-color: #f0f2f2">
	<%@ include file="navbar.jsp"%>
	<div class="container">
		<div class="row ">


			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center">Edit Books</h4>
											 <%
                        int id =Integer.parseInt(request.getParameter("id"));
                        BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
                        BookDtls b = dao.getBookById(id);
                        %>

						<form action="../editbooks" method="post">
							<input type="hidden"name = "id" value = "<%=b.getBookId() %>"/>
							<div class="form-group">
								<label for="exampleInputEmail1">Book Name*</label> <input
									type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" required="required"
									name="bookname" value="<%=b.getBookName()%>">

							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Author Name*</label> <input
									type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" required="required"
									name="authorname" value="<%=b.getAuthor()%>">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Price*</label> <input
									type="number" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" required="required" name="price"
									value="<%=b.getPrice()%>">

							</div>

							<div class="form-group">
								<label for="inputState">Book Status</label> 
								<select name="status" id="inputState" class="form-control">
									<option value="Active" <%= "Active".equals(b.getStatus()) ? "selected" : "" %>>Active</option>
									<option value="InActive" <%= "InActive".equals(b.getStatus()) ? "selected" : "" %>>InActive</option>
								</select>
							</div>


							<button type="submit" class="btn btn-primary">Update</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div style="margin-top: 57px;">
		<%@include file="footer.jsp"%></div>


</body>
</html>