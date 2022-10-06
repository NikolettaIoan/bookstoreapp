<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <%@ page
pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Books Search</title>
    <script src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
      crossorigin="anonymous"
    />
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath}/static/css/booksmenu.css? version=2.5"
    />
    <script src="${pageContext.request.contextPath}/static/js/booksmenu.js"></script>
  </head>
  <body>
    <div class="container">
      <div class="row">
        <h1>Books Menu</h1>
      </div>
      <div class="row">
        <div class="col" id="searchSelect">
          <h2>Search</h2>
        </div>
        <div class="col" id="insertSelect">
          <h2 class="fadeDiv">Insert</h2>
        </div>
      </div>
      <div class="row">
        <div class="col search">
          <form method="GET" action="${pageContext.request.contextPath}/search">
            <div class="mb-3">
              <label for="searchTitle" class="form-label"
                >Seach by title:
              </label>
              <input
                name="title"
                type="text"
                placeholder="Insert book's title"
                class="rounded"
                id="searchTitle"
                autofocus
              />
            </div>
            <div class="mb-3">
              <label for="searchAuthor" class="form-label"
                >Seach by author:
              </label>
              <input
                name="author"
                type="text"
                placeholder="Insert book's author"
                class="rounded"
                id="searchAuthor"
              />
            </div>

            <div class="row justify-content-md-center">
              <button class="btn" type="submit">Search</button>
            </div>
          </form>
        </div>
        <div class="col insert hidden">
          <form method="GET" action="${pageContext.request.contextPath}/insert">
            <div class="mb-3">
              <label for="insertTitle" class="form-label col">Title: </label>
              <input
                name="title"
                type="text"
                placeholder="Insert book's title"
                class="rounded"
                id="insertTitle"
                autofocus
              />
            </div>
            <div class="mb-3">
              <label for="insertAuthor" class="form-label">Author: </label>
              <input
                name="author"
                type="text"
                id="insertAuthor"
                class="rounded"
                placeholder="Insert book's author"
              />
            </div>
            <div class="mb-3">
              <label for="insertPrice" class="form-label">Price: </label>
              <input
                name="price"
                type="number"
                step="0.01"
                class="rounded"
                id="insertPrice"
                placeholder="Insert book's price"
              />
            </div>
            <div class="mb-3">
              <label for="insertPublisher" class="form-label"
                >Publisher:
              </label>
              <input
                name="publisher"
                type="text"
                class="rounded"
                id="insertPublisher"
                placeholder="Insert book's publisher"
              />
            </div>
            <div class="mb-3">
              <label for="insertYear" class="form-label">Year: </label>
              <input
                name="year"
                type="number"
                class="rounded"
                id="insertYear"
                placeholder="Insert the year the book was pulished"
              />
            </div>
            <div class="mb-3">
              <label class="form-label" for="insertUrl">URL: </label>
              <input
                name="cover"
                type="text"
                class="rounded"
                id="insertUrl"
                placeholder="Insert the url for the image"
              />
            </div>
            <div class="mb-3">
              <label for="insertPages" class="form-label"
                >Number of Pages:
              </label>
              <input
                name="pages"
                type="number"
                class="rounded"
                id="insertPages"
                placeholder="Insert book's number of pages"
              />
            </div>
            <div class="mb-3">
              <label for="insertEdition" class="form-label">Edition: </label>
              <input
                name="edition"
                type="number"
                class="rounded"
                id="insertEdition"
                placeholder="Insert book's edition"
              />
            </div>

            <div class="row justify-content-md-center">
              <button class="btn" type="submit">Insert</button>
            </div>
          </form>
        </div>
        <div class="row justify-content-md-center">
          <div class="error">
            <c:if test="${sqlError}">
              <p>Error in insert. Please try again</p>
            </c:if>
          </div>

          <div class="error">
            <c:if test="${booksNotFound}">
              <p>No books found</p>
            </c:if>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
