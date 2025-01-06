<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.DB.DBConnect"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.util.List"%>
<%@ page import="com.DAO.BookDAOImpl"%>
<%@ page import="com.entity.BookDtls"%>
<%@ page import="com.entity.User"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EBook : Index</title>

<%@ include file="all_component/allCss.jsp"%>
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

.recent-book {
    color: #007bff; 
    font-weight: bold;
    text-transform: uppercase;
}

.new-book {
    color: #28a745; 
    font-weight: bold;
    text-transform: uppercase;
}

.old-book {
    color: #dc3545; 
    font-weight: bold;
    text-transform: uppercase;
}

.recent-book-heading {
    color: #007bff; /* Blue color */
    font-size: 24px;
    font-weight: bold;
    text-transform: uppercase;
}

.new-book-heading {
    color: #28a745; /* Green color */
    font-size: 24px;
    font-weight: bold;
    text-transform: uppercase;
}

.old-book-heading {
    color: #dc3545; /* Red color */
    font-size: 24px;
    font-weight: bold;
    text-transform: uppercase;
}
</style>
</head>
<body style="background-color: #f0f1f2;">
    <% User u = (User) session.getAttribute("userobj"); %>
    <%@ include file="all_component/navbar.jsp"%>
    <div class="container-fluid back-img">
        <h2 class="text-center">EBook Management System</h2>
    </div>

    <div class="container-fluid">
        <h3 class="text-center recent-book-heading">Recent Book</h3>
        <div class="row">
            <% 
            BookDAOImpl dao2 = new BookDAOImpl(DBConnect.getConn());
            List<BookDtls> list2 = dao2.getRecentBooks();
            for (BookDtls b : list2) {
            %>
            <div class="col-md-3">
                <div class="card crd-ho recent-card">
                    <div class="card-body text-center">
                        <img alt="" src="book/<%=b.getPhotoName()%>" style="width: 150px; height: 200px" class="img-thumblin">
                        <p><%=b.getBookName()%></p>
                        <p><%=b.getAuthor()%></p>
                        <p>Category: <%=b.getBookCategory()%></p>
                        <% if (b.getBookCategory().equalsIgnoreCase("Old")) { %>
                        <a href="view_books.jsp?bid=<%=b.getBookId()%>" class="btn btn-success btn-sm ml-1">View Details</a>
                        <a href="" class="btn btn-danger btn-sm ml-1"><i class="fa-solid fa-indian-rupee-sign"></i> <%=b.getPrice()%></a>
                        <% } else { %>
                        <div class="row justify-content-center text-center">
                            <% if (u == null) { %>
                            <a href="login.jsp" class="btn btn-danger btn-sm ml-2"><i class="fa-solid fa-cart-shopping"></i> Add Cart</a>
                            <% } else { %>
                            <a href="cart?bid=<%=b.getBookId()%>&uid=<%=u.getId()%>" class="btn btn-danger btn-sm"><i class="fa-solid fa-cart-shopping"></i> Add Cart</a>
                            <% } %>
                            <a href="view_books.jsp?bid=<%=b.getBookId()%>" class="btn btn-success btn-sm ml-1">View Details</a>
                            <a href="" class="btn btn-danger btn-sm ml-1 mt-1"><i class="fa-solid fa-indian-rupee-sign"></i> <%=b.getPrice()%></a>
                        </div>
                        <% } %>
                    </div>
                </div>
            </div>
            <% } %>
        </div>
    </div>
    <div class="text-center mt-1">
        <a href="all_recent_book.jsp" class="btn btn-danger btn-sm text-white">View All</a>
    </div>

    <!-- End Recent Book -->
    <hr>
    <!-- Start New Book -->
    <div class="container-fluid">
        <h3 class="text-center new-book-heading">New Book</h3>
        <div class="row">
            <% 
            BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
            List<BookDtls> list = dao.getNewBooks();
            for (BookDtls b : list) {
            %>
            <div class="col-md-3">
                <div class="card crd-ho new-card">
                    <div class="card-body text-center">
                        <img alt="" src="book/<%=b.getPhotoName()%>" style="width: 150px; height: 200px" class="img-thumblin">
                        <p><%=b.getBookName()%></p>
                        <p><%=b.getAuthor()%></p>
                        <p>Category: <%=b.getBookCategory()%></p>
                        <div class="row justify-content-center text-center">
                            <% if (u == null) { %>
                            <a href="login.jsp" class="btn btn-danger btn-sm ml-2"><i class="fa-solid fa-cart-shopping"></i> Add Cart</a>
                            <% } else { %>
                            <a href="cart?bid=<%=b.getBookId()%>&uid=<%=u.getId()%>" class="btn btn-danger btn-sm"><i class="fa-solid fa-cart-shopping"></i> Add Cart</a>
                            <% } %>
                            <a href="view_books.jsp?bid=<%=b.getBookId()%>" class="btn btn-success btn-sm ml-1">View Details</a>
                            <a href="" class="btn btn-danger btn-sm ml-1 mt-1"><i class="fa-solid fa-indian-rupee-sign"></i> <%=b.getPrice()%></a>
                        </div>
                    </div>
                </div>
            </div>
            <% } %>
        </div>
    </div>
    <div class="text-center mt-1">
        <a href="all_new_book.jsp" class="btn btn-danger btn-sm text-white">View All</a>
    </div>

    <!-- End New Book -->
    <hr>
    <!-- Start Old Book -->
    <div class="container-fluid">
        <h3 class="text-center old-book-heading">Old Book</h3>
        <div class="row">
            <% 
            BookDAOImpl dao3 = new BookDAOImpl(DBConnect.getConn());
            List<BookDtls> list3 = dao3.getOldBooks();
            for (BookDtls b : list3) {
            %>
            <div class="col-md-3">
                <div class="card crd-ho old-card">
                    <div class="card-body text-center">
                        <img alt="" src="book/<%=b.getPhotoName()%>" style="width: 150px; height: 200px" class="img-thumblin">
                        <p><%=b.getBookName()%></p>
                        <p><%=b.getAuthor()%></p>
                        <p><%=b.getBookCategory()%></p>
                        <div class="row justify-content-center text-center">
                            <a href="view_books.jsp?bid=<%=b.getBookId()%>" class="btn btn-success btn-sm ml-1">View Details</a>
                            <a href="" class="btn btn-danger btn-sm ml-1  mt-1"><i class="fa-solid fa-indian-rupee-sign"></i> <%=b.getPrice()%></a>
                        </div>
                    </div>
                </div>
            </div>
            <% } %>
        </div>
    </div>
    <div class="text-center mt-1">
        <a href="all_old_book.jsp" class="btn btn-danger btn-sm text-white">View All</a>
    </div>
    <!-- End Old Book -->
    <%@ include file="all_component/footer.jsp"%>
</body>
</html>
