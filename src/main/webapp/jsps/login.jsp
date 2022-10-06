<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <%@ page
pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Login</title>

    <script src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>

    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
      crossorigin="anonymous"
    />
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath}/static/css/login.css? version=3"
    />
    <script src="${pageContext.request.contextPath}/static/js/login.js"></script>
  </head>
  <body>
    <div class="container">
      <div class="form-container" id="loginForm">
        <form action="${pageContext.request.contextPath}/login" method="POST">
          <div class="mb-3 form-floating">
            <input
              type="email"
              class="form-control"
              name="eMail"
              required
              placeholder="E-mail"
              id="email"
            />
            <label for="email">Email: </label>
          </div>
          <div class="mb-3 form-floating">
            <input
              type="password"
              name="password"
              id="password"
              required
              placeholder="Password"
              class="form-control"
            />
            <label for="password">Password: </label>
          </div>
          <button type="submit" class="btn">LOGIN</button>
        </form>
      </div>
      <div class="form-container hidden" id="registerForm">
        <form action="">
          <div class="mb-3 form-floating">
            <input
              type="email"
              class="form-control"
              name="emailRegister"
              required
              placeholder="emailRegister"
              id="emailRegister"
            />
            <label for="emailRegister">Email: </label>
          </div>
          <div class="mb-3 form-floating">
            <input
              type="password"
              class="form-control"
              name="passwordRegister"
              required
              placeholder="passwordRegister"
              id="passwordRegister"
            />
            <label for="passwordRegister">Password: </label>
          </div>
          <div class="mb-3 form-floating">
            <input
              type="password"
              class="form-control"
              name="passwordRegisterConfirm"
              required
              placeholder="passwordRegisterConfirm"
              id="passwordRegisterConfirm"
            />
            <label for="passwordRegisterConfirm">Confirm Password: </label>
          </div>

          <a
            href="${pageContext.request.contextPath}/jsps/register.jsp"
            class="btn"
            role="button"
            >REGISTER</a
          >
        </form>
        <a href="#" id="backToLogin">Back to login</a>
      </div>
      <div class="link-box">
        <a href="#">Forgot password?</a>
        <p>Don't have an account? <a href="#" id="register">Register</a></p>
      </div>
      <div class="container-error">
        <c:if test="${error}">
          <p>Login Error</p>
        </c:if>
      </div>
      <a href="${pageContext.request.contextPath}/index.jsp" class="return"
        >&#8592 Back</a
      >
    </div>
  </body>
</html>
 