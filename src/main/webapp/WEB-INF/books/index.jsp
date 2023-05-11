<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="/css/style.css">
<!-- For any Bootstrap that uses JS -->
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<div class="container mt-5">
    <h1>All Books</h1>
    <table class="table">
        <thead>
            <tr>
                <th scope="col">Id</th>
                <th scope="col">Title</th>
                <th scope="col">Description</th>
                <th scope="col">Language</th>
                <th scope="col">Number of Pages</th>
                <th scope="col">Ver Info</th>
                <th scope="col">Eliminar</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${books}" var="book">
            <tr>
                <th scope="row"><c:out value="${book.id}"/></th>
                <td><c:out value="${book.title}"/></td>
                <td><c:out value="${book.description}"/></td>
                <td><c:out value="${book.language}"/></td>
                <td><c:out value="${book.numberOfPages}"/></td>
                <td><a href="/books/${book.id}">Ver info</a></td>
                <td><form action="/books/${book.id}" method="post">
                        <input type="hidden" name="_method" value="delete">
                        <input type="submit" value="Delete" class="mt-3">
                    </form>
                </td>

            </tr>
            </c:forEach>
        </tbody>
    </table>
    <a href="/books/new">New Book</a>
</div>

