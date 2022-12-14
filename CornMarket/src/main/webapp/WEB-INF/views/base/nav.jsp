<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/resources/css/main/nav.css"/>
</head>
<body>
	<nav>
        <div class="nav_wrap">
            <ul class="nav_first">
                <li class="nav_main"><a href="">사기</a>
                    <ul class="nav_second">
                        <li><a href="<c:url value='/list' />">전자기기</a></li>
                        <li><a href="<c:url value='/list' />">가구/홈 데코</a></li>
                        <li><a href="<c:url value='/list' />">반려동물용품</a></li>
                        <li><a href="<c:url value='/list' />">취미/게임/음반</a></li>
                        <li><a href="<c:url value='/list' />">의류</a></li>
                        <li><a href="<c:url value='/list' />">뷰티/미용</a></li>
                    </ul>
                </li>
                <li class="nav_main"><a href="">팔기</a>
                    <ul class="nav_second">
                        <li><a href="<c:url value='/enroll' />">판매등록</a></li>
                        <li><a href="<c:url value='/profile' />">판매내역조회</a></li>
                    </ul>
                </li>
                <li class="nav_main"><a href="<c:url value='/list' />">나눔</a></li>
            </ul>
        </div>
    </nav>
</body>
</html>