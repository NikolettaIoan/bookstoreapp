<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <%@ page
pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
  </head>
  <body>
    <div>
      <table>
        <tr>
          <th>ID</th>
          <th>Title</th>
          <th>Author</th>
          <th>Price</th>
          <th>Publisher</th>
          <th>Year</th>
          <th>Pages</th>
          <th>Edition</th>
          <th>Cover</th>
        </tr>
        <c:forEach var="book" items="${books}">
          <tr>
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
                href="${pageContext.request.contextPath}/delete?id=${book.id}&title=${book.title}&author=${book.author}&price=${book.price}&publisher=${book.publisher}&year=${book.year}&pages=${book.pages}&edition=${book.edition}&cover=${book.cover}"
                >Delete</a
              >
            </td>
            <td>
              <a
                href="${pageContext.request.contextPath}/jsps/bookupdate.jsp?id=${book.id}&title=${book.title}&author=${book.author}&price=${book.price}&publisher=${book.publisher}&year=${book.year}&pages=${book.pages}&edition=${book.edition}&cover=${book.cover}"
                >Update</a
              >
            </td>
          </tr>
        </c:forEach>
      </table>
    </div>
    <div>
      <c:if test="${deleteAPIError}">
        <p>Something went wrong with Delete</p>
      </c:if>
    </div>

    <div>
      <c:if test="${updateAPIError}">
        <p>Something went wrong with Update</p>
      </c:if>
    </div>
  </body>
</html>
