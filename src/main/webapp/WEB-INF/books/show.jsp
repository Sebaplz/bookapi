<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="/css/style.css">
<!-- For any Bootstrap that uses JS -->
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<div class="container mt-5">
    <h1 class="mb-3"><c:out value="${book.title}"/></h1>
    <p>Description: <c:out value="${book.description}"/></p>
    <p>Language: <c:out value="${book.language}"/></p>
    <p>Number of pages: <c:out value="${book.numberOfPages}"/></p>
    <a href="/books/${book.id}/edit">Edit Book</a>
    <form action="/books/${book.id}" method="post">
        <input type="hidden" name="_method" value="delete">
        <input type="submit" value="Delete" class="mt-3">
    </form>
</div>

