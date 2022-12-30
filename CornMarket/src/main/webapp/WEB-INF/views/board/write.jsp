12<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 등록 </title>
</head>
<body>
<jsp:include page="../base/header.jsp" />
<jsp:include page="../base/nav.jsp" />

<form method="post" action="/market/enroll">

<label>제목</label>
<input type="text" name="title" /><br />

<label>가격</label>
<input type="text" name="price" /><br />

<label>내용</label>
<textarea cols="50" rows="5" name="content"></textarea><br />

<div>
<button type="submit" id="loginbtn">게시물등</button>

</div>

</form>

<jsp:include page="../base/footer.jsp" />
</body>
</html>