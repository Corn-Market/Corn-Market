<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>아이디 찾기</title>
    <script></script>
    <c:set var="path" value="${pageContext.request.contextPath}" />
    <link rel="stylesheet" href="${path}/resources/css/account/account_popup.css" />
    <link rel="icon" type="image/x-icon" href="${path}/resources/images/style/favicon.ico" />
    <link rel="shortcut icon" type="image/x-icon" href="${path}/resources/images/style/favicon.ico" />
  </head>

  <body>
    <div class="container">
      <div class="popup-wrap" id="popup">
        <div class="popup">
          <div class="popup-head">
            <span class="head-title">아이디 찾기</span>
          </div>
          <div class="popup-body">
            <div class="body-content">
              <div class="body-titlebox">
                <p class="email-success-message">귀하의 아이디는</p>
                <span class="email-code-num" id="emailcodeNum">${accountId.user_id}</span>
                <p class="email-success-message">입니다.</p>
              </div>
            </div>
          </div>
          <div class="popup-foot">
            <span class="pop-btn close" id="close" onclick="self.close()">닫기</span>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
