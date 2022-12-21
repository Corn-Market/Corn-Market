<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>아이디/비밀번호 찾기</title>
    <link rel="stylesheet" href="${path}/resources/css/searchidpw.css" />
    <script> 
      function openPopup1(){
        let url = "";
        let windowTargetName = "targetName";
        let features = "scrollbars=yes,width=1000,height=800,location=no, resizable=yes";
        window.open(url, windowTargetName, features);

        frm1.action = "<c:url value='/account/id/phone'/>";
        frm1.method = "POST";
        frm1.target = windowTargetName;
        frm1.submit();
      }

      function openPopup2(){
        let url = "";
        let windowTargetName = "targetName";
        let features = "scrollbars=yes,width=1000,height=800,location=no, resizable=yes";
        window.open(url, windowTargetName, features);

        frm2.action = "<c:url value='/account/id/mail'/>";
        frm2.method = "POST";
        frm2.target = windowTargetName;
        frm2.submit();
      }
    </script>
  </head>
  <body>
    <div class="search-idpw-title">
      <h2>아이디/비밀번호 찾기</h2>
    </div>
    <div class="search-wrap">
      <div class="search-tab">
        <ul class="search-tab-ul">
          <li class="search-current">
            <div class="search-status-id"><a href="<c:url value="/account/id" />">아이디 찾기</a></div>
          </li>
          <li class="search-current">
            <div class="search-status-pw"><a href="<c:url value="/account/pw" />">비밀번호 찾기</a></div>
          </li>
        </ul>
      </div>
      <div class="id-search-wrap">
        <div class="id-search-notice">
          <span>아이디를 찾을 방법을 선택해주세요.</span>
        </div>
        <div class="search-type">
          <ul>
            <li class="type-list-current">
              <div class="search-title">
                <button type="button">등록된 휴대폰번호로 찾기</button>
              </div>
              <div class="inputEnter" style="display: block">
                <form action="<c:url value='/account/id/phone'/>" method="POST" name="frm1">
                    <div class="inputBox">
                      <div class="styleInput">
                        <input id="memberNm1" name="user_name" type="text" class="input1" placeholder="이름" />
                        <span id="conClear" class="delBtn" style="display: none"></span>
                      </div>
                      <div class="styleInput">
                        <input
                          id="memberHp"
                          name="phone"
                          type="text"
                          class="input1"
                          inputmode="numeric"
                          placeholder="휴대폰번호 (-없이 입력)"
                        />
                        <span id="conClear" class="delBtn" style="display: none"></span>
                        <p class="error" style="display: none"></p>
                      </div>
                    </div>
                    <div class="btnArea">
                      <button type="button" onclick="openPopup1()" class="btnYellow">확인</button>
                    </div>
                </form>
              </div>
            </li>
            <li class="type-list-current">
              <div class="search-title">
                <button type="button">등록된 이메일로 찾기</button>
              </div>
              <div class="inputEnter" style="display: block">
                <form action="<c:url value='/account/id/mail'/>" method="POST"  name="frm2">
                  <div class="inputBox">
                    <div class="styleInput">
                      <input id="memberNm2" name="user_name" type="text" class="input1" placeholder="이름" />
                      <span id="conClear" class="delBtn" style="display: none"></span>
                    </div>
                    <div class="emailInput">
                      <div class="styleInput">
                        <input name="email" id="memberEmail" type="text" class="inputE" placeholder="이메일" />
                        <span id="conClear" class="delBtn" style="display: none"></span>
                      </div>
                      <div class="userSelect">
                        <select id="memberEmail2" onchange="checkMemEmail()">
                          <option value="">직접입력</option>
                          <option value="gmail.com">gmail.com</option>
                          <option value="hanmail.net">hanmail.net</option>
                          <option value="hotmail.com">hotmail.com</option>
                          <option value="nate.com">nate.com</option>
                          <option value="naver.com">naver.com</option>
                          <option value="yahoo.co.kr">yahoo.co.kr</option>
                          <option value="yahoo.com">yahoo.com</option>
                        </select>
                      </div>
                    </div>
                    <div class="btnArea">
                      <button type="button" onclick="openPopup2()" class="btnYellow">확인</button>
                    </div>
                  </div>
                </form>
              </div>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </body>
</html>