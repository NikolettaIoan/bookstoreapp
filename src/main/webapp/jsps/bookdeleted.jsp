<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <%@ page
language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Deleted Successfully</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
      crossorigin="anonymous"
    />
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath}/static/css/bookinserted.css?"
    />
  </head>
  <body>
    <div class="container">
      <h1>Deleted Successfully</h1>
      <p class="par">
        <span class="descr">Id:</span><span class="val">${book.id}</span>
      </p>
      <p class="par">
        <span class="descr">Title:</span><span class="val">${book.title}</span>
      </p>
      <p class="par">
        <span class="descr">Author:</span
        ><span class="val">${book.author}</span>
      </p>
      <div class="link">
        <a href="${pageContext.request.contextPath}/jsps/booksmenu.jsp"
          >&#8592 Back to menu</a
        >
      </div>
    </div>
  </body>
</html>
