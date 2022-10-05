<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <%@ page
language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Success Insert</title>
  </head>
  <body>
    <h1>Book was inserted successfully</h1>
    <div>
      <p>${insertedbook.title}</p>
      <p>${insertedbook.author}</p>
      <p>${insertedbook.price}</p>
      <p>${insertedbook.publisher}</p>
      <p>${insertedbook.year}</p>
      <p>${insertedbook.cover}</p>
      <p>${insertedbook.pages}</p>
      <p>${insertedbook.edition}</p>
    </div>
    <a href="${pageContext.request.contextPath}/jsps/booksmenu.jsp">Back to menu</a>
  </body>
</html>
