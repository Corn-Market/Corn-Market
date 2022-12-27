<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ page language="java" contentType="text/html;
charset=UTF-8" pageEncoding="UTF-8"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
    <link href="${path}/resources/css/profile/profile.css" rel="stylesheet" />
    <style>
      .onsale {
        background-color: rgb(241, 196, 15);
      }
      .onsale a {
        color: white;
      }
      .profile_img img{
      	background-image: url("${path}/resources/images/profile/profile_img_default.png");
      	background-size: 100px;
      	background-repeat: no-repeat;
      	background-position: center 105%;
      }
    </style>

    <script>
      function update_myinfo(){
        window. open("popup_profile_update.jsp", "popup01", "width=680, height=700");
      }

      function change_img(){
                  window. open("popup_profile_img.jsp", "popup02", "width=450, height=300");
      }
      function mytown(){
        window. open("popup_profile_mytown.jsp", "popup01", "width=680, height=700");
      }
    </script>
  </head>
  <body>
    <div class="profile_wrap">
      <div class="profile_first">
        <div class="profile_img">
          <img src="${path}${profile_img}" />
          <!-- <img /> -->
          <input type="button" class="profile_update_btn" value="프로필 수정"
            onclick="location.href='<c:url value="/profile/update" />'" />
            <!-- onclick="update_myinfo()"  -->
            
         
        </div>

        <div class="profile_contents">
          <div class="profile_nickname">${profile.nickname}</div>
          <div class="degree">
            <div class="manner_degree">매너온도</div>
            <div class="profile_degree">${profile.temperature}℃</div>
          </div>
          <ul>
            <li>${profile.town_name} 인증</li>
            <li>${profile.join_date[0]}년 ${profile.join_date[1]}월 ${profile.join_date[2]}일 가입인증</li>
          </ul>
        </div>
      </div>
      <div class="profile_second">
        <div class="profile_nav">
         <div class="profile_status onsale"><a href="<c:url value="/profile" />">판매중</a></div>
          <div class="profile_status offsale"><a href="<c:url value="/profile/offsale" />">판매완료</a></div>
          <div class="profile_status review"><a href="<c:url value="/profile/review" />">거래후기</a></div>
        </div>
        <div class="home-card-wrap">
<c:forEach var="sale" items="${profile.saleList}">
          <article class="card-top">
            <a class="card-link">
              <div class="card-photo">${sale.post_img}</div>
              <div class="card-desc">
                <div class="card-title">${sale.title}</div>
                <div class="card-price">${sale.price}원</div>
                <div class="card-region">서울시 ${sale.town_name}</div>
              </div>
            </a>
          </article>
</c:forEach>

        </div>
      </div>
    </div>
  </body>
</html>
