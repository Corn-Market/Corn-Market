<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Corn-Market 환영합니다!</title>
</head>
<body>
<jsp:include page="../base/header_nickname.jsp"/>
<jsp:include page="../base/nav.jsp"/>
<jsp:include page="section.jsp"/>
<jsp:include page="section2.jsp"/>
<jsp:include page="section3.jsp"/>
<jsp:include page="../base/footer.jsp"/>
</body>
</html>