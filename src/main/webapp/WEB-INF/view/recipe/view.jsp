<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Title</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
          integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
</head>
<body>
<%-- navbar --%>
<c:import url="/WEB-INF/fragment/navbar.jsp"/>

<h1>${recipe.name}</h1>
<h2>${recipe.description}</h2>
<h5>${recipe.date}</h5>

<div>
    <button>
        <a href="/recipe/edit">수정</a>
    </button>

    <button>레시피 공유</button>

    <button>
        <a href="/recipe/list">레시피 목록</a>
    </button>
</div>

<form action="">
    <fieldset>
        <ol>
            <li>
                <label for="category">카테고리</label>
                <input type="text" id="category">
            </li>
        </ol>
    </fieldset>

    <ol>
        <li>
            <input type="checkbox">
            <input type="text">
        </li>

        <li>
            <input type="checkbox">
            <input type="text">
        </li>

        <li>
            <input type="checkbox">
            <input type="text">
        </li>

        <li>
            <input type="checkbox">
            <input type="text">
        </li>
    </ol>

</form>
</body>
</html>
