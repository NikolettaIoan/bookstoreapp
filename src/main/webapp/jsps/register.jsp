<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <%@ page
pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath}/static/css/register.css"
    />
  </head>
  <body>
    <div class="container">
      <h1>Thank You!</h1>
      <p>
        After the authorization by admin, directions will be sent to the given
        mail address
      </p>
      <a href="${pageContext.request.contextPath}/jsps/login.jsp"
        >Back to login page</a
      >
      <a href="${pageContext.request.contextPath}/index.jsp"
        >Back to Home Page</a
      >
    </div>
  </body>
</html>
