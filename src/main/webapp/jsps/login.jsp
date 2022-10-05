<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <%@ page
pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Login</title>
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath}/static/css/login.css"
    />
  </head>
  <body>
    <div class="container">
      <div class="header">
        <h1>Login</h1>
      </div>
      <a href="${pageContext.request.contextPath}/index.jsp">Back</a>
      <form action="${pageContext.request.contextPath}/login" method="POST">
        <div class="row">
          <input type="email" name="eMail" required placeholder="E-mail" />
          <span></span>
        </div>
        <div class="row">
          <input
            type="password"
            name="password"
            required
            placeholder="Password"
          />
          <span></span>
        </div>
        <div class="row">
          <button type="submit">Sign In</button>
        </div>
      </form>
      <div class="">
        <a href="#">Lost your password?</a>
      </div>
      <div class="row">
        <p>Don't have an account? <a href="#">Sign up here!</a></p>
      </div>
    </div>
    <div class="container">
      <c:if test="${error}">
        <p>Login Error</p>
      </c:if>
    </div>
  </body>
</html>
