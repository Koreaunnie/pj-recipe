<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>레시피 > 레시피 목록</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
          integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>

    <style>
        table {
            border-collapse: collapse;
            width: 100%;
            text-align: center;
            background: #fff;
            border-radius: 10px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1), 0 10px 20px rgba(0, 0, 0, 0.1);
        }

        #search-input {
            width: 100%;
            background: url("") no-repeat;
            background-position: 10px 10px;
        }

        .category {
            display: flex;
        }

        .recipe-list tr {
            border-bottom: 1px solid var(--table-border-color);
        }

        .recipe-list tr:last-child {
            border-bottom: none;
        }

        .recipe-list tr:hover {
            background: var(--table-hover-color);
        }

        .recipe-list tr td {
            padding: 5px 10px;
        }

        .recipe-list .col-1 {
            width: 40%;
        }

        .recipe-list .col-2 {
            width: 50%;
        }

        .recipe-list .col-3 {
            width: 10%;
        }

        .recipe-list .name {
            text-align: left;
        }

        .recipe-list .description {
            text-align: left;
            color: var(--description);
            font-size: var(--small-font-size);
        }

        .recipe-list .created {
            font-size: var(--small-font-size);
        }
    </style>
</head>

<body>
<%-- navbar --%>
<c:import url="/WEB-INF/fragment/navbar.jsp"/>

<h1>레시피 목록</h1>


<div class="button-wrap">
    <button>
        <a href="/recipe/new" type="button">임시보관함</a>
    </button>

    <button>
        <a href="/recipe/new" type="button">레시피 작성</a>
    </button>
</div>

<div class="search-wrap">
    <ul class="category">
        <li>
            <label for="select-category"></label>
            <select name="categoryType" id="select-category">
                <option value="all" selected>전체</option>
            </select>
        </li>

        <li>
            <label for="input-search"></label>
            <input type="search" id="input-search" placeholder="검색">
        </li>
    </ul>
</div>

<table>
    <tbody class="recipe-list">
    <c:forEach items="${recipeList}" var="recipe">
        <tr>
            <td class="col-1 name">
                <a href="/recipe/view?id=${recipe.id}">
                        ${recipe.name}
                </a>
            </td>

            <td class="col-2 description">
                    ${recipe.description}
            </td>

            <td class="col-3 created">
                    ${recipe.created}
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>