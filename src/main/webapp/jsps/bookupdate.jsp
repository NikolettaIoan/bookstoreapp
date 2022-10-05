<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Update Book</title>
  </head>
  <body>
    <div>
      <form method="GET" action="${pageContext.request.contextPath}/update">
        <input type="text" name="id" value="${param.id}" readonly /><br />
        <input
          name="title"
          type="text"
          value="${param.title}"
          autofocus
        />
        <br />
        <input name="author" type="text" value="${param.author}"/>
        <br />
        <input
          name="price"
          type="number"
          step="0.01"
          value="${param.price}"
        />
        <br />
        <input
          name="publisher"
          type="text"
          value="${param.publisher}"
        />
        <br />
        <input
          name="year"
          type="number"
          value="${param.year}"
        />
        <br />
        <input
          name="cover"
          type="text"
         
          value="${param.cover}"
        />
        <br />
        <input
          name="pages"
          type="number"
          
          value="${param.pages}"
        />
        <br />
        <input
          name="edition"
          type="number"
          
          value="${param.edition}"
        />
        <br />
        <button type="submit">Update Book</button>
      </form>
    </div>
  </body>
</html>
