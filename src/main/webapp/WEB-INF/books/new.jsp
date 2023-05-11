<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="/css/style.css">
<!-- For any Bootstrap that uses JS -->
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<div class="container mt-5">
    <h1>New Book</h1>
    <form:form action="/books" method="post" modelAttribute="book">
        <p>
            <form:label path="title">Title</form:label>
            <form:errors path="title" class="text-danger"/>
            <form:input path="title"/>
        </p>
        <p>
            <form:label path="description">Description</form:label>
            <form:errors path="description" class="text-danger"/>
            <form:textarea path="description"/>
        </p>
        <p>
            <form:label path="language">Language</form:label>
            <form:errors path="language" class="text-danger"/>
            <form:input path="language"/>
        </p>
        <p>
            <form:label path="numberOfPages">Pages</form:label>
            <form:errors path="numberOfPages" class="text-danger"/>
            <form:input type="number" path="numberOfPages"/>
        </p>
        <input type="submit" value="Submit"/>
    </form:form>
</div>

