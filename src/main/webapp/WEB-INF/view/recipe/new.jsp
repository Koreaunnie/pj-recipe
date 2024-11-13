<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Recipe > 레시피 등록</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
          integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>

    <style>
        .button-wrap ul {
            display: flex;
            justify-content: space-between;
            border: 1px solid crimson;
        }

        .button-wrap ul li {

        }

        .modal {

        }

        .list {
            list-style: decimal;
        }
    </style>
</head>
<body>
<%-- navbar --%>
<c:import url="/WEB-INF/fragment/navbar.jsp"/>

<%-- form 안에 form 정리하기 --%>
<form method="post">
    <div class="button-wrap">
        <ul>
            <li>
                <a href="/recipe/list" type="button">&#60;</a>
            </li>
            <li>
                <button>임시저장</button>
            </li>
            <li>
                <button>임시보관함</button>
            </li>
            <li>
                <button>취소</button>
            </li>
            <li>
                <button>저장</button>
            </li>
        </ul>
    </div>

    <%-- 목록 갈 때 내용 삭제 확인 modal --%>
    <%-- 아님 알아서 임시저장되고 바로 넘어가던지 --%>
    <div class="modal">
        목록으로 돌아가면 작성 중인 레시피는 삭제됩니다.
        <div class="modal-button">
            <button class="btn btn-outline-secondary">닫기</button>
            <button class="btn btn-danger">
                목록으로 돌아가기
            </button>
        </div>
    </div>


    <fieldset class="title">
        <label for="nameInput"></label>
        <input type="text" id="nameInput" name="title" placeholder="요리명" required>

        <label for="descriptionInput"></label>
        <input type="text" id="descriptionInput" name="description" placeholder="설명">
    </fieldset>

    <fieldset>
        <legend>카테고리</legend>

        <label for="categorySelect"></label>
        <select name="" id="categorySelect" size="">
            <option value="" selected>카테고리</option>
        </select>
    </fieldset>

    <fieldset class="ingredients">
        <legend>재료</legend>

        <ul>
            <li>
                <input type="text">
                <input type="text">
                <select name="" id="">
                    <option value="T">T</option>
                    <option value="t">t</option>
                    <option value="g">g</option>
                    <option value="ml">ml</option>
                    <option value="개">개</option>
                </select>
            </li>
        </ul>
    </fieldset>

    <fieldset class="preparation">
        <ol>
            <li>
                <input type="text">

                <%-- 이미 쓴 글의 순서 변경 버튼--%>
                <button class="switch-field">
                    <i class="fa-solid fa-repeat"></i>
                </button>
            </li>

            <li>
                <%-- 매 줄마다 버튼을 클릭해서 글 / 사진 추가 기능 --%>
                <%-- 1. 이걸 클릭하면 --%>
                <button class="add-field">
                    <i class="fa-solid fa-plus"></i>
                </button>

                <%-- 2. 이게 나오게 --%>
                <form action="" id="add-field">
                    <input type="text">
                </form>


                <button form="add-image">
                    <i class="fa-solid fa-image"></i>
                </button>

                <form action="" id="add-image">
                    <input type="file">
                </form>
            </li>
        </ol>
    </fieldset>

    <fieldset class="cooking-notes">
        <legend>Cooking Notes</legend>

        <textarea name="" id="" cols="30" rows="10">

        </textarea>
    </fieldset>
</form>
</body>
</html>