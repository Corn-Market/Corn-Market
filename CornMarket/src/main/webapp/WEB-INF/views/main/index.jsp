<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Corn-Market</title>
    <link rel="icon" type="image/x-icon" href="${path}/resources/images/style/favicon.ico" />
    <link rel="shortcut icon" type="image/x-icon" href="${path}/resources/images/style/favicon.ico" />
  </head>
  <body>
    <jsp:include page="../base/header.jsp" />
    <jsp:include page="section.jsp" />
    <jsp:include page="../base/footer.jsp" />
  </body>
</html>
