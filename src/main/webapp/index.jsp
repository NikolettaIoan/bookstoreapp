<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <%@ page
pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>BooksSearchApp</title>
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath}/static/css/index.css? version=2"
    />
  </head>
  <body>
    <div class="container">
      <h1>Book Store App</h1>
      <h2>You can make a new book entry, delete or remove an existing one.</h2>

      <a href="${pageContext.request.contextPath}/jsps/login.jsp"
        >Login to continue</a
      >
      <div class="img-container">
        <img
          src="${pageContext.request.contextPath}/static/img/books.png"
          alt="books image"
        />
      </div>
    </div>
  </body>
</html>
