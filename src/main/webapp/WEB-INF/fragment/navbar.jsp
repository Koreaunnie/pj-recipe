<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<style>
    * {
        text-decoration: none;
        list-style: none;
    }

    body {
        width: 60%;
        margin: 0 auto;
    }

    input {
        border: 1px solid #dee2e6;
        border-radius: 5px;
        padding: 7px;
    }

    button {
        cursor: pointer;
        padding: 5px 7px;
    }

    :root {
        --table-border-color: #e7e8ea;
        --table-hover-color: #f3f3f4;
        --description: #8a8b8c;

        --small-font-size: 14px;
        --normal-font-size: 16px;
    }
</style>


<nav>
    <ul>
        <li>
            <a href="/recipe/list">레시피 노트</a>
        </li>
        <li>
            <a href="">재료 비율 계산</a>
        </li>
        <li>
            <a href="/price/list">재료 단가 계산</a>
        </li>
        <li>
            <a href="/calender/calendar">레시피 기록 (달력)</a>
        </li>
        <li>
            <a href="/board/list">레시피 공유</a>
        </li>
    </ul>
</nav>
