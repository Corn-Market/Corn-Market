<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Corn-Market</title>
    <c:set var="path" value="${pageContext.request.contextPath}"/>
    <link rel="stylesheet" href="${path}/resources/css/post/postmodify.css"/>
</head>

<body>

     <div class="board-wrap">
        <form method="post" enctype="multipart/form-data">
            <div class="board-img-wrap">
                <div class="board-container">
                    <ul class="image-preview" id="preview">
                    </ul>
                </div>
                <span class="btn-delete">삭제</span>
                <div class="board-button">
                    <input type="file" id="chooseFile" class="real-upload" name="chooseFile" accept="image/*"
                        multiple="multiple" style="display: none;">
                    <label for="chooseFile" class="upload">
                        사진올리기
                    </label>
                </div>
                <div class="fileContainer">
                    <div class="fileInput">
                        <p>FILE NAME : </p>
                        <p id="fileName"></p>
                    </div>
                </div>
            </div>
        </form>
        <div class="board-title-wrap">
            <h2 class="board-title">제목</h2>
            <input class="board-title-input" name="registertitle" id="registertitle" type="text" placeholder="제목을 입력해주세요">
        </div>
        <div class="board-cate-wrap">
            <h2 class="board-cate">카테고리</h2>
            <select class="board-cate-select" name="registercate" id="registercate">
                <option value="select">선택</option>
                <option value="electronics">전자기기</option>
                <option value="furniture">가구,인테리어</option>
                <option value="clothes">의류</option>
                <option value="beaty">뷰티,미용</option>
                <option value="hobbygamemusic">취미,게임,음반</option>
                <option value="petsupplies">반려동물용품</option>
            </select>
        </div>
        <div class="board-sellingprice-wrap">
            <h2 class="board-sellingprice">판매가격</h2>
            <input class="board-sellingprice-input" type="text" placeholder="가격을 입력해주세요" id="inputonchange"
                name="inputonchange">
            <p class="board-sellingprice-won">원</p>
            <p class="board-check">나눔</p>
            <input type="checkbox" class="board-checkbox" id="boardcheckbox" name="boardcheckbox" value="1" />
        </div>
        <div class="board-contents-wrap">
            <textarea placeholder="내용을 입력해주세요" name="registercontent" id="registercontent"></textarea>
        </div>
        <div class="board-btn-wrap">
            <input class="board-btn" type="submit" value="등록">
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="${path}/resources/js/post/postmodify.js"></script>

</body>

</html>