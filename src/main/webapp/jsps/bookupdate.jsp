<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <%@ page
pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Update Book</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
      crossorigin="anonymous"
    />
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath}/static/css/bookupdate.css? version=3"
    />
  </head>
  <body>
    <div>
      <div class="row link_row">
      <a href="${pageContext.request.contextPath}/jsps/booksmenu.jsp" class="link_row--text">&#8592 Books Menu</a>
    </div>
      <div class="container">
        <h1>Update Book</h1>
        <form method="GET" action="${pageContext.request.contextPath}/update">
          <div class="row mb-2 align-items-center">
            <div class="col-2">
              <label for="id" class="col-form-label">ID: </label>
            </div>
            <div class="col">
              <input type="text" name="id" value="${param.id}" id="id" class="rounded col-id" readonly />
            </div>
          </div>
          <div class="row mb-2 align-items-center">
            <div class="col-2">
              <label for="title" class="col-form-label">Title: </label>
            </div>
            <div class="col">
              <input type="text" name="title" value="${param.title}" id="title" class="rounded" autofocus/>
            </div>
          </div>
          <div class="row mb-2 align-items-center">
            <div class="col-2">
              <label for="author" class="col-form-label">Author: </label>
            </div>
            <div class="col">
              <input type="text" name="author" value="${param.author}" id="author" class="rounded"/>
            </div>
          </div>
          <div class="row mb-2 align-items-center">
            <div class="col-2">
              <label for="price" class="col-form-label">Price: </label>
            </div>
            <div class="col">
              <input  type="number" name="price" step="0.01" min="0" value="${param.price}" id="price" class="rounded"/>
            </div>
          </div>
          <div class="row mb-2 align-items-center">
            <div class="col-2">
              <label for="publisher" class="col-form-label">Publisher: </label>
            </div>
            <div class="col">
              <input type="text" name="publisher" value="${param.publisher}" id="publisher" class="rounded"/>
            </div>
          </div>
          <div class="row mb-2 align-items-center">
            <div class="col-2">
              <label for="year" class="col-form-label">Year: </label>
            </div>
            <div class="col">
              <input  type="number" name="year" min="0" value="${param.year}" id="year" class="rounded"/>
            </div>            
          </div>
          <div class="row mb-2 align-items-center">
            <div class="col-2">
              <label for="cover" class="col-form-label">Cover: </label>
            </div>
            <div class="col">
              <input type="text" name="cover" value="${param.cover}" id="cover" class="rounded"/>
            </div>
          </div>
          <div class="row mb-2 align-items-center">
            <div class="col-2">
              <label for="pages" class="col-form-label">Pages: </label>
            </div>
            <div class="col">
              <input  type="number" name="pages" min="0" value="${param.pages}" id="pages" class="rounded"/>
            </div> 
          </div>
          <div class="row mb-2 align-items-center">
            <div class="col-2">
              <label for="edition" class="col-form-label">Edition: </label>
            </div>
            <div class="col">
              <input  type="number" name="edition" min="0" value="${param.edition}" id="edition" class="rounded"/>
            </div> 
          </div>
         
          <div class="row mb-3 "><button type="submit" class="btn btn-primary">Update Book</button></div>
        </form>
      </div>
    </div>
  </body>
</html>
