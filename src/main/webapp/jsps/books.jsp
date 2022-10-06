<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <%@ page
pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
      crossorigin="anonymous"
    />
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath}/static/css/books.css? version=2.5"
    />
  </head>
  <body>
    <div class="row link_row">
      <a href="${pageContext.request.contextPath}/jsps/booksmenu.jsp" class="link_row--text">&#8592 Books Menu</a>
    </div>
    <div class="container">
      <table class="table">
        <tr class="header">
          <th>ID</th>
          <th>Title</th>
          <th>Author</th>
          <th>Price</th>
          <th>Publisher</th>
          <th>Year</th>
          <th>Pages</th>
          <th>Edition</th>
          <th>Cover</th>
          <th></th>
          <th></th>
        </tr>
        <c:forEach var="book" items="${books}">
          <tr class="tr_values">
            <td>${book.id}</td>
            <td>${book.title}</td>
            <td>${book.author}</td>
            <td>${book.price}</td>
            <td>${book.publisher}</td>
            <td>${book.year}</td>
            <td>${book.pages}</td>
            <td>${book.edition}</td>
            <td>${book.cover}</td>

            <td>
              <a
                class="btn btn-primary btn-sm"
                href="${pageContext.request.contextPath}/jsps/bookupdate.jsp?id=${book.id}&title=${book.title}&author=${book.author}&price=${book.price}&publisher=${book.publisher}&year=${book.year}&pages=${book.pages}&edition=${book.edition}&cover=${book.cover}"
                >Update</a
              >
            </td>
            <td>
              <a
                class="btn btn-danger btn-sm"
                href="${pageContext.request.contextPath}/delete?id=${book.id}&title=${book.title}&author=${book.author}&price=${book.price}&publisher=${book.publisher}&year=${book.year}&pages=${book.pages}&edition=${book.edition}&cover=${book.cover}"
                >Delete</a
              >
            </td>
          </tr>
        </c:forEach>
      </table>
    </div>
  </body>
</html>
