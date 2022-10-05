<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Books Search</title>
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath}/static/css/booksmenu.css"
    />
  </head>
  <body>
    <h1>BooksMenu</h1>
    <div class="search">
      <h2>Search</h2>
      <form method="GET" action="${pageContext.request.contextPath}/search">
        <input
          name="title"
          type="text"
          class="search rounded"
          placeholder="Insert book's title"
          autofocus
        />
        <input
          name="author"
          type="text"
          class="search rounded"
          placeholder="Insert book's author"
        />
        <br /><br />
        <button class="search-btn rounded color-btn" type="submit">
          Search
        </button>
      </form>
    </div>
    <div class="insert">
      <h2>Insert</h2>
      <form method="GET" action="${pageContext.request.contextPath}/insert">
        <input
          name="title"
          type="text"
          class="search rounded"
          placeholder="Insert book's title"
          autofocus
        />
        <input
          name="author"
          type="text"
          class="search rounded"
          placeholder="Insert book's author"
        />
        <input
          name="price"
          type="number"
          step="0.01"
          class="search rounded"
          placeholder="Insert book's price"
        />
        <input
          name="publisher"
          type="text"
          class="search rounded"
          placeholder="Insert book's publisher"
        />
        <input
          name="year"
          type="number"
          class="search rounded"
          placeholder="Insert the year the book was pulished"
        />
        <input
          name="cover"
          type="text"
          class="search rounded"
          placeholder="Insert the url for the image"
        />
        <input
          name="pages"
          type="number"
          class="search rounded"
          placeholder="Insert book's number of pages"
        />
        <input
          name="edition"
          type="number"
          class="search rounded"
          placeholder="Insert book's edition"
        />
        <br /><br />
        <button class="search-btn rounded color-btn" type="submit">
          Insert
        </button>
      </form>
    </div>
    <div class="center">
      <c:if test="${sqlError}">
        <p>Error in insert. Please try again</p>
      </c:if>
    </div>

    <div class="center">
      <c:if test="${booksNotFound}">
        <p>No books found</p>
      </c:if>
    </div>
  </body>
</html>
