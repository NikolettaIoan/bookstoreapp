<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <%@ page
language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Deleted Successfully</title>
  </head>
  <body>
    <p>Book: ${book.id} ${book.title} ${book.author}</p>
    <p>Deleed Successfully</p>
    <a href="${pageContext.request.contextPath}/jsps/booksmenu.jsp"
      >Back to menu</a
    >
  </body>
</html>
