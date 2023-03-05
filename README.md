# 🌽CornMarket

<a href="https://github.com/Corn-Market/Corn-Market/pulls?q=is%3Apr+is%3Aclosed" ><img src="https://img.shields.io/github/issues-pr-closed/Corn-Market/Corn-Market" /></a> ![GitHub Workflow Status (with branch)](https://img.shields.io/github/actions/workflow/status/Corn-Market/Corn-Market/ci-cd.yml)

중고거래 사이트 클론 프로젝트

### 배포 URL

🔗 [CornMarket](http://52.79.181.154/)

<br>

## 🌾 ERD 설계

![CornMarket MySql](https://user-images.githubusercontent.com/104571141/222759100-cbed1610-b95a-4273-bb38-b63a7c451cf5.png)

<details>
<summary>초기 ERD</summary>
  <img src="https://user-images.githubusercontent.com/104571141/214116148-33d2539f-0a14-4109-91e9-de03bfebbb7d.png" />
</details>

<br>

## 🌾 개발 환경

- 개발 언어 : Java 11

- 프레임워크 : Spring (Spring MVC), MyBatis

- 클라이언트 : Jsp, CSS, JavaScript

- 빌드 도구 : Maven

- 데이터베이스 : Oracle XE 11gR2 → MySQL 8.0.32

- WAS : Apache Tomcat 8.5

- CI/CD : Docker, AWS EC2 (Ubuntu), Github Actions

- IDE : STS(Eclipse), VS Code, IntelliJ

- 협업 도구 : Github, Notion, Google Drive, Discord

- ETC : Kakao Maps API, WebSocket, ERDCloud, Kakao Oven

<p align="right"><a href="#cornmarket">TOP</a></p>

<br>


## 🌾 페이지 기능 상세

<br>
<details>
<summary>페이지 화면</summary>
  <img width="750" src="https://user-images.githubusercontent.com/104571141/222986406-36f14135-9955-4a43-9bf0-f90756fe4b30.png" alt="메인 화면" title="메인 화면"/>
  <img width="750" src="https://user-images.githubusercontent.com/104571141/222986407-24d13e19-45b7-4392-b7ea-ca7dc47a55dc.png" alt="회원가입 화면1" title="회원가입 화면1"/>
  <img width="750" src="https://user-images.githubusercontent.com/104571141/222986408-50eed2c6-72a4-49c5-b874-c1ceb21d3e59.png" alt="회원가입 화면2" title="회원가입 화면2"/>
  <img width="750" src="https://user-images.githubusercontent.com/104571141/222986410-5a477059-8c58-49ef-8079-a7f755710578.png" alt="로그인 화면" title="로그인 화면"/>
  <img width="750" src="https://user-images.githubusercontent.com/104571141/222986411-ef9fa229-d126-4dd3-890c-a2ad6e46f281.png" alt="아이디찾기 화면" title="아이디찾기 화면"/>
  <img width="750" src="https://user-images.githubusercontent.com/104571141/222986412-3b0b92b2-5ad6-479b-9fd4-7b0717869bc5.png" alt="비밀번호찾기 화면" title="비밀번호찾기 화면"/>
  <img width="750" src="https://user-images.githubusercontent.com/104571141/222986413-6a43ec08-ccf0-4559-9531-48563abedd95.png" alt="프로필 화면" title="프로필 화면"/>
  <img width="750" src="https://user-images.githubusercontent.com/104571141/222986416-367cddf3-f1dd-4181-a350-9abb27ee35c7.png" alt="판매글 등록 화면" title="판매글 등록 화면"/>
  <img width="750" src="https://user-images.githubusercontent.com/104571141/222986417-a4d9d22f-b3bd-4fff-944d-795ca4bf5490.png" alt="판매글 조회 화면" title="판매글 조회 화면"/>
  <img width="370" src="https://user-images.githubusercontent.com/104571141/222986415-e1f14c54-ab0d-446b-8e6c-9e8081fa2031.png" alt="동네인증 화면" title="동네인증 화면"/>
  <img width="370" src="https://user-images.githubusercontent.com/104571141/222986419-9610f5be-53ca-4078-be43-ad49297df00b.png" alt="채팅방목록 화면" title="채팅방목록 화면"/>
  <img width="370" src="https://user-images.githubusercontent.com/104571141/222986421-7be46fc4-4387-4520-bd3d-3719e69a9227.png" alt="채팅 화면" title="채팅 화면"/>
  <img width="370" src="https://user-images.githubusercontent.com/104571141/222986423-9f5e92c6-0c30-46ab-be9a-886007e26a46.png" alt="거래후기 작성 화면" title="거래후기 작성 화면"/>
<br>
<a href="#-페이지-기능-상세">위로</a>
</details>


### 1. 메인 페이지

- 키워드 검색
- 카테고리별 판매글 조회

### 2. 회원가입/로그인

### 3. 아이디/비밀번호 찾기

- 비밀번호 찾기 시 이메일 전송

### 4. 프로필

- 판매중 리스트
- 판매완료 리스트
- 거래후기 리스트
- 프로필 이미지 등록
- 프로필 수정

### 5. 동네인증

- Kakao Maps API로 현재 위치 인증

### 6. 판매글 작성/수정

- 판매글 이미지 등록

### 7. 판매글 조회

- 최신글 조회
- 카테고리별 조회
- 지역별 조회
- 검색 결과 조회

### 8. 채팅

- 채팅방 목록
- 웹소켓으로 실시간 채팅 구현
- 거래 완료시 거래 후기 작성

<p align="right"><a href="#cornmarket">TOP</a></p>

<br>

## 🌾 Architecture

![CI-CD architecture](https://user-images.githubusercontent.com/104571141/222985081-59669a57-d39e-43df-b1ea-140c6da89a86.png)

<br>

## 🌾 팀원

| 박초희 | 유다현 | 조은진 | 김영현 |
| --- | --- | --- | --- |
| [hice11](https://github.com/hice11) | [DAHYUNYOO1](https://github.com/DAHYUNYOO1) | [guabaaa](https://github.com/guabaaa) | [hoger96](https://github.com/hoger96) |

<br>

### 🔗 참고 사이트

[https://www.daangn.com](https://www.daangn.com/)

[https://m.bunjang.co.kr](https://m.bunjang.co.kr/)

<p align="right"><a href="#cornmarket">TOP</a></p>
