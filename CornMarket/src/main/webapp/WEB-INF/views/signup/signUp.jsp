<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Corn-Market 회원가입</title>
    <link rel="stylesheet" href="${path}/resources/css/signup/signUp.css" />
    <link rel="icon" type="image/x-icon" href="${path}/resources/images/style/favicon.ico" />
    <link rel="shortcut icon" type="image/x-icon" href="${path}/resources/images/style/favicon.ico" />
  </head>
  <body>
    <jsp:include page="../base/header.jsp" />
    <section>
      <form name="member" action="<c:url value='/signup'/>" method="POST">
        <div class="h2_st">
          <h2>회원가입</h2>
        </div>
        <div class="join_rule1">
          <p class="rule1-1">
            안녕하세요?<br />
            (주)콘마켓 서비스를 이용해 주셔서 감사합니다.<br />
            지역 정보 모바일 서비스를 제공하는 콘마켓이 아래 준비한 약관을 읽어주시면 감사드리겠습니다.
          </p>
          <textarea class="rule1" cols="110" rows="10">
※계정 관련

콘마켓은 모바일 서비스 특성상 별다른 비밀번호 없이 휴대전화 번호만으로 계정을 생성하실 수 있습니다. 다만, 실제 휴대전화의 소유주임을 확인하기 위해서 가입 당시 인증 절차를 거치게 됩니다. 또한, 다른 모바일 기기에서 서비스 사용을 연속하기 위해서는 기존에 가입하고 인증했던 휴대전화 번호로 재인증을 해야 합니다. 아래의 경우에는 계정 생성을 승인하지 않을 수 있습니다.

다른 사람의 명의나 휴대전화 번호 등 개인정보를 이용하여 계정을 생성하려 한 경우
동일인이 다수의 계정을 생성하려 한 경우
계정 생성시 필요한 정보를 입력하지 않거나 허위 정보를 입력한 경우
콘마켓이 과거에 운영원칙 또는 법률 위반 등의 정당한 사유로 해당 계정을 삭제 또는 징계한 경우
사기 정보 모음 사이트나 정부기관 사이트 등에서 거래 사기 이력이 있는 휴대전화 번호로 확인된 경우
계정은 본인만 이용할 수 있고, 다른 사람에게 이용을 허락하거나 양도할 수 없습니다. 사용자는 계정과 관련된 정보, 즉 프로필 사진이나 별명 등을 수정할 수 있습니다. 휴대폰 번호가 바뀐 경우에는 서비스 내 설정 메뉴나 고객센터 문의를 통해 새 휴대폰 번호로 인증절차를 걸쳐 수정할 수 있습니다.

사용시 주의해야 할 점

콘마켓은 사용자가 아래와 같이 잘못된 방법이나 행위로 서비스를 이용할 경우 사용에 대한 제재(이용정지, 강제탈퇴 등)를 가할 수 있습니다.

잘못된 방법으로 서비스의 제공을 방해하거나 콘마켓이 안내하는 방법 이외의 다른 방법을 사용하여 콘마켓 서비스에 접근하는 행위
다른 이용자의 정보를 무단으로 수집, 이용하거나 다른 사람들에게 제공하는 행위
서비스를 영리나 홍보 목적으로 이용하는 행위
음란 정보나 저작권 침해 정보 등 공서양속 및 법령에 위반되는 내용의 정보 등을 발송하거나 게시하는 행위
콘마켓의 동의 없이 당근마켓 서비스 또는 이에 포함된 소프트웨어의 일부를 복사, 수정, 배포, 판매, 양도, 대여, 담보제공하거나 타인에게 그 이용을 허락하는 행위
소프트웨어를 역설계하거나 소스 코드의 추출을 시도하는 등 콘마켓 서비스를 복제, 분해 또는 모방하거나 기타 변형하는 행위
관련 법령, 콘마켓의 모든 약관 또는 운영정책을 준수하지 않는 행위
개인정보 보호 관련

개인정보는 콘마켓 서비스의 원활한 제공을 위하여 사용자가 동의한 목적과 범위 내에서만 이용됩니다. 개인정보 보호 관련 기타 상세한 사항은 콘마켓 개인정보처리방침을 참고하시기 바랍니다.

※게시물의 저작권 보호

콘마켓 서비스 사용자가 서비스 내에 게시한 게시물의 저작권은 해당 게시물의 저작자에게 귀속됩니다.
사용자가 서비스 내에 게시하는 게시물은 검색결과 내지 서비스 및 관련 프로모션, 광고 등에 노출될 수 있으며, 해당 노출을 위해 필요한 범위 내에서는 일부 수정, 복제, 편집되어 게시될 수 있습니다. 이 경우, 콘마켓은 저작권법 규정을 준수하며, 사용자는 언제든지 고객센터 또는 운영자 문의 기능을 통해 해당 게시물에 대해 삭제, 검색결과 제외, 비공개 등의 조치를 요청할 수 있습니다.
위 2항 이외의 방법으로 사용자의 게시물을 이용하고자 하는 경우에는 전화, 팩스, 전자우편 등을 통해 사전에 사용자의 동의를 얻어야 합니다.
게시물의 관리

사용자의 게시물이 "정보통신망법" 및 "저작권법"등 관련법에 위반되는 내용을 포함하는 경우, 권리자는 관련법이 정한 절차에 따라 해당 게시물의 게시중단 및 삭제 등을 요청할 수 있으며, 콘마켓은 관련법에 따라 조치를 취하여야 합니다.
콘마켓은 전항에 따른 권리자의 요청이 없는 경우라도 권리침해가 인정될 만한 사유가 있거나 기타 회사 정책 및 관련법에 위반되는 경우에는 관련법에 따라 해당 게시물에 대해 임시조치(삭제, 노출제한, 게시중단) 등을 취할 수 있습니다.
       
※사용권리

콘마켓은 서비스 이용을 위하여 양도불가능하고 무상의 라이선스를 사용자분들에게 제공합니다. 다만, 콘마켓 상표 및 로고를 사용할 권리를 사용자분들에게 부여하는 것은 아닙니다.

※서비스 고지 및 홍보내용 표시

콘마켓은 서비스 사용자분의 편의를 위해 서비스 이용과 관련된 각종 고지 및 기타 콘마켓 서비스 홍보를 포함한 다양한 정보를 콘마켓 서비스에 표시하거나 사용자의 휴대폰 문자, 알림 메시지(Push Notification) 등으로 발송할 수 있으며 서비스 사용자분은 이에 동의합니다. 이 경우 서비스 사용자분의 통신환경 또는 요금구조에 따라 서비스 사용자분이 데이터 요금 등을 부담할 수 있습니다. 한편 콘마켓은 서비스 사용자분이 수집에 동의한 서비스 내 활동 정보를 기초로 콘마켓에게 직접적인 수익이 발생하지 않거나 콘마켓이 판매하는 상품과 직접적인 관련성이 없는 한도에서 다른 서비스 사용자분 등이 판매하는 상품 또는 서비스에 관한 정보를 위와 같은 방법으로 서비스 사용자분에게 보낼 수 있으며 서비스 사용자분은 이에 동의합니다. 물론 서비스 사용자분은 관련 법령상 필요한 내용을 제외하고 언제든지 이러한 정보에 대한 수신 거절을 할 수 있으며, 이 경우 콘마켓은 즉시 위와 같은 정보를 보내는 것을 중단합니다.

※위치기반서비스 관련

콘마켓은 사용자의 실생활에 더욱 보탬이 되는 유용한 서비스를 제공하기 위하여 콘마켓 서비스에 위치기반서비스를 포함시킬 수 있습니다. 콘마켓의 위치기반서비스는 사용자의 단말기기의 위치정보를 수집하는 위치정보사업자로부터 위치정보를 전달받아 제공하는 무료서비스이며, 구체적으로는 사용자의 현재 위치를 기준으로 특정 지역커뮤니티에 가입자격을 부여하고 다른 이용자와 해당 지역과 관련된 게시물을 작성할 수 있도록 하는 서비스(지역커뮤니티서비스), 사용자의 현재 위치를 이용한 생활 정보나 광고성 정보를 제공하는 서비스(정보제공서비스)가 있습니다. 특히, 사용자가 14세 미만 이용자로서 개인위치정보를 활용한 위치기반 서비스를 이용하기 위해서는 콘마켓은 사용자의 개인위치정보를 이용 또는 제공하게 되며, 이 경우 부모님 등 법정대리인의 동의가 먼저 있어야 합니다. 만약 법정대리인의 동의 없이 위치기반서비스가 이용된 것으로 판명된 때에는 콘마켓은 즉시 사용자의 위치기반서비스 이용을 중단하는 등 적절한 제한을 할 수 있습니다.

사용자(14세 미만 이용자의 법정대리인 포함)는 콘마켓 서비스와 관련된 개인위치정보의 이용, 제공 목적, 제공받는 자의 범위 및 위치기반서비스의 일부에 대하여 동의를 유보하거나, 이용∙제공에 대한 동의의 전부 또는 일부 철회할 수 있으며, 일시적인 중지를 요구할 수 있습니다. 콘마켓은 위치정보의 보호 및 이용 등에 관한 법률의 규정에 따라 개인위치정보 및 위치정보 이용∙제공사실 확인자료를 6개월 이상 보관하며, 사용자가 동의의 전부 또는 일부를 철회한 때에는 당근마켓은 철회한 부분에 해당하는 개인위치정보 및 위치정보 이용∙제공사실 확인자료를 지체 없이 파기하겠습니다.

사용자(14세 미만 이용자의 법정대리인 포함)는 콘마켓에 대하여 사용자에 대한 위치정보 이용∙제공사실 확인자료나, 사용자의 개인위치정보가 법령에 의하여 제3자에게 제공되었을 때에는 그 이유 및 내용의 열람 또는 고지를 요구할 수 있고, 오류가 있는 때에는 정정을 요구할 수 있습니다. 만약, 콘마켓이 사용자의 개인위치정보를 사용자가 지정하는 제3자에게 직접 제공하는 때에는 법령에 따라 개인위치정보를 수집한 스마트폰 등으로 사용자에게 개인위치정보를 제공받는 자, 제공 일시 및 제공 목적을 즉시 통보하겠습니다.

콘마켓은 8세 이하의 아동 등(금치산자, 중증 정신장애인 포함)의 보호의무자가 개인위치정보의 이용 또는 제공에 서면으로 동의하는 경우에는 해당 본인의 동의가 있는 것으로 보며, 이 경우 보호의무자는 개인위치정보주체의 권리를 모두 행사할 수 있습니다.

콘마켓은 사용자의 위치정보를 안전하게 보호하기 위하여 위치정보관리책임자(정창훈 이사, privacy@cornservice.com)를 지정하고 있습니다.

만약 사용자와 콘마켓 간의 위치정보와 관련한 분쟁에 대하여 협의가 어려운 때에는 사용자은 위치정보의 보호 및 이용 등에 관한 법률 제 28조 2항 및 개인정보보호법 제43조의 규정에 따라 개인정보 분쟁조정위원회에 조정을 신청할 수 있습니다.

위치기반서비스 이용약관 전문보기

※오프라인 서비스 관련

콘마켓은 서비스 사용자의 편의를 위해 사용자로부터 배송 등 온라인 커뮤니티 이외의 서비스(이하 “오프라인 서비스”)를 요청 받아 이를 직접 또는 다른 사람에게 맡겨 수행할 수 있고, 이러한 서비스와 관련하여 회사와 사용자가 지켜야 할 사항은 오프라인 서비스 이용약관 및 배송 서비스 수행자(콘버디) 이용약관 등에 따릅니다.

※콘알바 서비스 관련

콘마켓은 직업안정법에 근거하여 지역 내 구인구직 정보가 효과적으로 제공될 수 있도록 하기 위하여 콘알바 서비스를 제공하며, 이러한 서비스와 관련하여 회사와 사용자가 지켜야 할 사항은 콘알바 서비스 이용약관에 따릅니다.

※서비스 중단

콘마켓 서비스는 장비의 유지∙보수를 위한 정기 또는 임시 점검 또는 다른 상당한 이유로 콘마켓 서비스의 제공이 일시 중단될 수 있으며, 이때에는 미리 서비스 제공화면에 공지하겠습니다. 만약, 콘마켓로서도 예측할 수 없는 이유로 콘마켓 서비스가 중단된 때에는 콘마켓이 상황을 파악하는 즉시 통지하겠습니다.

※이용계약 해지(서비스 탈퇴)

사용자가 콘마켓 서비스의 이용을 더 이상 원치 않는 때에는 언제든지 콘마켓 서비스 내 제공되는 메뉴를 이용하여 콘마켓 서비스 이용계약의 해지 신청을 할 수 있으며, 콘마켓은 법령이 정하는 바에 따라 신속히 처리하겠습니다. 다만, 거래사기 등의 부정이용 방지를 위해 거래를 진행중이거나 거래 관련 분쟁이 발생한 사용자는 이용계약 해지 및 서비스 탈퇴가 특정 기간 동안 제한될 수 있습니다. 이용계약이 해지되면 법령 및 개인정보처리방침에 따라 사용자 정보를 보유하는 경우를 제외하고는 사용자 정보나 사용자가 작성한 게시물 등 모든 데이터는 삭제됩니다. 다만, 사용자가 작성한 게시물이 제3자에 의하여 스크랩 또는 다른 공유 기능으로 게시되거나, 사용자가 제3자의 게시물에 댓글, 채팅 등 게시물을 추가하는 등의 경우에는 다른 이용자의 정상적 서비스 이용을 위하여 필요한 범위 내에서 콘마켓 서비스 내에 삭제되지 않고 남아 있게 됩니다.

※책임제한

콘마켓은 법령상 허용되는 한도 내에서 콘마켓 서비스와 관련하여 본 약관에 명시되지 않은 어떠한 구체적인 사항에 대한 약정이나 보증을 하지 않습니다. 예를 들어, 콘마켓은 콘마켓 서비스에 속한 콘텐츠, 서비스의 특정 기능, 서비스의 이용가능성에 대하여 어떠한 약정이나 보증을 하는 것이 아니며, 콘마켓 서비스를 있는 그대로 제공할 뿐입니다.

※손해배상

콘마켓의 과실로 인하여 사용자가 손해를 입게 될 경우 당근마켓은 법령에 따라 사용자의 손해를 배상하겠습니다. 다만, 콘마켓은 콘마켓 서비스에 접속 또는 이용과정에서 발생하는 개인적인 손해, 제3자가 불법적으로 콘마켓의 서버에 접속하거나 서버를 이용함으로써 발생하는 손해, 제3자가 콘마켓 서버에 대한 전송 또는 콘마켓 서버로부터의 전송을 방해함으로써 발생하는 손해, 제3자가 악성 프로그램을 전송 또는 유포함으로써 발생하는 손해, 전송된 데이터의 생략, 누락, 파괴 등으로 발생한 손해, 명예훼손 등 제3자가 콘마켓 서비스를 이용하는 과정에서 사용자에게 발생시킨 손해에 대하여 책임을 부담하지 않습니다. 또한 콘마켓은 법률상 허용되는 한도 내에서 간접 손해, 특별 손해, 결과적 손해, 징계적 손해, 및 징벌적 손해에 대한 책임을 부담하지 않습니다.

※약관수정

콘마켓은 법률이나 당근마켓 서비스의 변경사항을 반영하기 위한 목적 등으로 본 약관이나 각 콘마켓 서비스 고객센터의 콘마켓 서비스 이용방법, 해당 안내 및 고지사항을 수정할 수 있습니다. 본 약관이 변경되는 경우 콘마켓은 변경 사항을 개별 콘마켓 서비스 초기화면에 게시하며, 변경된 약관은 게시한 날로부터 7일 후부터 효력이 발생합니다.

콘마켓은 변경된 약관을 게시한 날로부터 효력이 발생되는 날까지 약관변경에 대한 사용자의 의견을 기다리겠습니다. 위 기간이 지나도록 사용자의 의견이 콘마켓에 접수되지 않으면, 사용자가 변경된 약관에 따라 서비스를 이용하는 데에 동의하는 것으로 보겠습니다. 사용자가 변경된 약관에 동의하지 않는 경우 변경된 약관의 적용을 받는 해당 서비스의 제공이 더 이상 불가능하게 됩니다.

※사용자 의견

콘마켓은 사용자의 의견을 소중하게 생각합니다. 사용자는 언제든지 서비스 내 콘마켓 운영자 문의란을 통해 의견을 개진할 수 있습니다. 콘마켓은 푸시 알림, 채팅 방법, 휴대폰 번호 등으로 사용자에게 여러 가지 소식을 알려드리며, 사용자 전체에 대한 통지는 콘마켓 서비스 초기화면 또는 공지사항 란에 게시함으로써 효력이 발생합니다.

본 약관은 콘마켓과 사용자와의 관계에 적용되며, 제3자의 수익권을 발생시키지 않습니다.

사용자가 본 약관을 준수하지 않은 경우에, 콘마켓이 즉시 조치를 취하지 않더라도 콘마켓이 가지고 있는 권리를 포기하는 것이 아니며, 본 약관 중 일부 조항의 집행이 불가능하게 되더라도 다른 조항에는 영향을 미치지 않습니다.

본 약관 또는 콘마켓 서비스와 관련하여서는 대한민국의 법률이 적용됩니다.

공고일자: 2022년 6월 28일
시행일자: 2022년 7월 05일
        		</textarea>
          <div class="checkbox_wrap">
            <input type="checkbox" id="haveto1" />
            <label for="haveto1">(필수)콘마켓 약관 동의사항</label>
          </div>
          <textarea class="rule1" cols="110" rows="10">
위치기반서비스 이용약관
제1조 (목적)
            
본 약관은 회원(본 약관에 동의한 자를 말합니다. 이하 “회원”이라고 합니다)이 주식회사 당근마켓(이하 “회사”라고 합니다)가 제공하는 위치기반서비스(이하 “서비스”라고 합니다)를 이용함에 있어 회사와 회원의 권리・의무 및 책임사항을 규정함을 목적으로 합니다.
            
제2조 (약관의 효력 및 변경)
            
본 약관은 서비스를 신청한 고객 또는 개인위치정보주체가 본 약관에 동의하고 회사가 정한 소정의 절차에 따라 서비스의 이용자로 등록함으로써 효력이 발생합니다.
회사는 본 약관의 내용을 회원이 쉽게 알 수 있도록 서비스 초기 화면에 게시하거나 기타의 방법으로 공지합니다.
회사는 필요하다고 인정되면 본 약관을 변경할 수 있으며, 회사가 약관을 개정할 경우에는 기존약관과 개정약관 및 개정약관의 적용일자와 개정사유를 명시하여 현행약관과 함께 그 적용일자 7일 전부터 적용일 이후 상당한 기간 동안 공지합니다. 다만, 개정 내용이 회원에게 불리한 경우에는 그 적용일자 30일 전부터 적용일 이후 상당한 기간 동안 각각 이를 서비스 홈페이지에 게시하여 고지합니다.
회사가 전항에 따라 회원에게 공지하거나 통지하면서 공지 또는 통지ㆍ고지일로부터 개정약관 시행일 7일 후까지 거부의사를 표시하지 아니하면 승인한 것으로 본다는 뜻을 명확하게 고지하였음에도 불구하고 거부의 의사표시가 없는 경우에는 변경된 약관에 승인한 것으로 봅니다. 회원이 개정약관에 동의하지 않을 경우 회원은 이용계약을 해지할 수 있습니다.
제3조 (약관 외 준칙)
            
본 약관에 규정되지 않은 사항에 대해서는 위치정보의 보호 및 이용 등에 관한 법률(이하 “위치정보법”이라고 합니다), 전기통신사업법, 정보통신망 이용촉진 및 보호 등에 관한 법률(이하 “정보통신망법”이라고 합니다), 개인정보보호법 등 관련법령 또는 회사가 정한 서비스의 운영정책 및 규칙 등(이하 “세부지침”이라고 합니다)의 규정에 따릅니다.
            
제4조 (서비스의 가입)
            
본회사는 아래와 같은 경우에는 여러분의 당근마켓 계정 생성을 유보할 수 있습니다.
실명이 아니거나 다른 사람의 명의를 사용하는 등 허위로 신청하는 경우
회원 등록 사항을 빠뜨리거나 잘못 기재하여 신청하는 경우
기타 회사가 정한 이용신청 요건을 충족하지 않았을 경우
제5조 (서비스의 해지)
            
회원이 서비스 이용을 해지하고자 할 경우 회원은 회사가 정한 절차(서비스 홈페이지 등을 통해 공지합니다)를 통해 서비스 해지를 신청할 수 있으며, 회사는 법령이 정하는 바에 따라 신속히 처리합니다.
            
제6조 (서비스의 내용)
            
서비스의 이용은 연중무휴 1일 24시간을 원칙으로 합니다. 단, 회사의 업무 또는 기술상의 이유로 서비스가 일시 중지될 수 있으며, 운영상의 목적으로 회사가 정한 기간에도 서비스는 일시 중지될 수 있습니다. 이때 회사는 사전 또는 사후에 이를 공지합니다.
회사가 제공하는 서비스의 종류, 세부 내용, 이용 요금은 아래와 같습니다.
종류 : 동네 커뮤니티 서비스
서비스명 : 콘마켓
설명 : 내동네를 인증하고 주변 이웃과 중고물품을 거래하거나 동네 정보를 공유하는 서비스
위치정보 이용 목적: 내 동네인증
이용 요금 : 무료
제7조 (서비스 이용요금)
            
회사가 제공하는 서비스는 기본적으로 유료 또는 무료입니다. 단, 별도의 유료서비스의 경우 해당 서비스에 명시된 요금을 지불하여야 사용 가능합니다.
회사는 유료서비스 이용요금을 회사와 계약한 전자지불업체에서 정한 방법에 의하거나 회사가 정한 청구서에 합산하여 청구할 수 있습니다.
유료서비스 이용을 통하여 결제된 대금에 대한 취소 및 환불은 회사의 결제 이용약관 등 관련법령에 따릅니다.
회원의 개인정보도용 및 결제사기로 인한 환불요청 또는 결제자의 개인정보 요구는 법률이 정한 경우 외에는 거절될 수 있습니다.
무선서비스 이용 시 발생하는 데이터 통신료는 별도이며, 회원이 가입한 각 이동통신사의 정책에 따릅니다.
MMS 등으로 게시물을 등록할 경우 발생하는 요금은 회원이 가입한 각 이동통신사의 정책에 따릅니다.
제8조 (서비스의 이용제한 및 중지)
            
회사는 아래 각 호의 경우에는 회원의 서비스 이용을 제한하거나 중지시킬 수 있습니다.
회원이 회사 서비스의 운영을 고의 또는 중과실로 방해하는 경우
서비스용 설비 점검, 보수 또는 공사로 인하여 부득이한 경우
전기통신사업법에 규정된 기간통신사업자가 전기통신 서비스를 중지했을 경우
국가비상사태, 서비스 설비의 장애 또는 서비스 이용의 폭주 등으로 서비스 이용에 지장이 있는 때
기타 중대한 사유로 인하여 회사가 서비스 제공을 지속하는 것이 부적당하다고 인정하는 경우
회사는 전항의 규정에 의하여 서비스의 이용을 제한하거나 중지한 때에는 그 사유 및 제한기간 등을 회원에게 알려야 합니다.
제9조 (서비스내용변경 통지 등)
            
회사가 서비스 내용을 변경하거나 종료하는 경우 회사는 회원의 등록된 휴대폰 번호 문자 방식으로 서비스 내용의 변경 사항 또는 종료를 통지할 수 있습니다.
전항의 경우 불특정 다수인을 상대로 통지를 함에 있어서는 서비스 홈페이지 등 기타 회사의 공지사항 페이지를 통하여 회원들에게 통지할 수 있습니다. 단, 회원 본인의 거래와 관련하여 중대한 영향을 미치는 사항은 상당한 기간 동안 서비스 홈페이지에 게시하거나 회원에게 전자적 형태(전자우편, SMS 등)로 개별통지 합니다.
제10조 (개인위치정보의 이용 또는 제공)
            
회사는 개인위치정보를 이용하여 서비스를 제공하고자 하는 경우에는 미리 약관에 명시한 후 개인위치정보주체의 동의를 얻어야 합니다.
회원 및 법정대리인의 권리와 그 행사방법은 제소 당시의 이용자의 주소에 의하며, 주소가 없는 경우에는 거소를 관할하는 지방법원의 전속관할로 합니다. 다만, 제소 당시 이용자의 주소 또는 거소가 분명하지 않거나 외국 거주자의 경우에는 민사소송법상의 관할법원에 제기합니다.
회사는 타사업자 또는 이용 고객과의 요금정산 및 민원처리를 위해 위치정보 이용·제공, 사실 확인자료를 자동 기록·보존하며, 해당 자료는 6개월간 보관합니다.
회사는 개인위치정보주체의 동의 없이 개인위치정보를 제3자에게 제공하지 아니하며, 제3자 제공 서비스를 제공하는 경우에는 제공 받는자 및 제공목적을 사전에 개인위치정보주체에게 고지하고 동의를 받습니다. 다만, 다음의 경우는 예외로 하고 있습니다.
법령의 규정에 의거하거나 수사 목적으로 법령에 정해진 절차와 방법에 따라 수사기관의 요구가 있는 경우
회사는 개인위치정보를 회원이 지정하는 제3자에게 제공하는 경우에는 개인위치정보를 수집한 당해 통신 단말장치로 매회 회원에게 제공받는 자, 제공 일시 및 제공목적을 즉시 통보합니다. 단, 아래 각 호의 1에 해당하는 경우에는 회원이 미리 특정하여 지정한 통신 단말장치 또는 전자우편주소로 통보합니다.
개인위치정보를 수집한 당해 통신단말장치가 문자, 음성 또는 영상의 수신기능을 갖추지 아니한 경우
회원이 온라인 게시 등의 방법으로 통보할 것을 미리 요청한 경우
제11조 (개인위치정보주체의 권리)
            
회원은 회사에 대하여 언제든지 개인위치정보를 이용한 위치기반서비스 제공 및 개인위치정보의 제3자 제공에 대한 동의의 전부 또는 일부를 철회할 수 있습니다. 이 경우 회사는 수집한 개인위치정보 및 위치정보 이용, 제공사실 확인자료를 파기합니다.
회원은 회사에 대하여 언제든지 개인위치정보의 수집, 이용 또는 제공의 일시적인 중지를 요구할 수 있으며, 회사는 이를 거절할 수 없고 이를 위한 기술적 수단을 갖추고 있습니다.
회원은 회사에 대하여 아래 각 호의 자료에 대한 열람 또는 고지를 요구할 수 있고, 당해 자료에 오류가 있는 경우에는 그 정정을 요구할 수 있습니다. 이 경우 회사는 정당한 사유 없이 회원의 요구를 거절할 수 없습니다.
본인에 대한 위치정보 수집, 이용, 제공사실 확인자료
본인의 개인위치정보가 위치정보의 보호 및 이용 등에 관한 법률 또는 다른 법률 규정에 의하여 제3자에게 제공된 이유 및 내용
회원은 제1항 내지 제3항의 권리행사를 위해 회사의 소정의 절차를 통해 요구할 수 있습니다.
제12조 (법정대리인의 권리)
            
회사는 14세 미만의 회원에 대해서는 개인위치정보를 이용한 위치기반서비스 제공 및 개인위치정보의 제3자 제공에 대한 동의를 당해 회원과 당해 회원의 법정대리인으로부터 동의를 받아야 합니다. 이 경우 법정대리인은 제11조에 의한 회원의 권리를 모두 가집니다.
회사는 14세 미만의 아동의 개인위치정보 또는 위치정보 이용, 제공사실 확인자료를 이용약관에 명시 또는 고지한 범위를 넘어 이용하거나 제3자에게 제공하고자 하는 경우에는 14세 미만의 아동과 그 법정대리인의 동의를 받아야 합니다. 단, 아래의 경우는 제외합니다.
위치정보 및 위치기반서비스 제공에 따른 요금정산을 위하여 위치정보 이용, 제공사실 확인자료가 필요한 경우
통계작성, 학술연구 또는 시장조사를 위하여 특정 개인을 알아볼 수 없는 형태로 가공하여 제공하는 경우
제13조 (8세 이하의 아동 등의 보호의무자의 권리)
            
회사는 14세 미만의 아동의 개인위치정보 또는 위치정보 이용, 제공사실 확인자료를 이용약관에 명시 또는 고지한 범위를 넘어 이용하거나 제3자에게 제공하고자 하는 경우에는 14세 미만의 아동과 그 법정대리인의 동의를 받아야 합니다. 단, 아래의 경우는 제외합니다.
8세 이하의 아동
피성년후견인
장애인복지법 제2조 제2항 제2호의 규정에 따른 정신적 장애를 가진 자로서 장애인 고용촉진 및 직업재활법 제2조 제2호의 규정에 따라 중증장애인에 해당하는 자(장애인복지법 제32조의 규정에 따라 장애인등록을 한 자에 한합니다)
전항의 규정에 따른 8세 이하 아동 등의 보호의무자는 해당 아동을 사실상 보호하는 자로서 다음 각 호에 해당하는 자를 말합니다.
8세 이하의 아동의 법정대리인 또는 보호시설에 있는 미성년자의 후견 직무에 관한 법률 제3조의 규정에 따른 후견인
피성년후견인의 법정대리인
본 조 제1항 제3호의 자의 법정대리인 또는 장애인복지법 제58조 제1항 제1호의 규정에 따른 장애인생활시설(국가 또는 지방자치단체가 설치·운영하는 시설에 한합니다)의 장, 정신보건법 제3조 제4호의 규정에 따른 정신질환자 사회복귀시설(국가 또는 지방자치단체가 설치·운영하는 시설에 한합니다)의 장, 동법 동조 제5호의 규정에 따른 정신요양시설의 장
8세 이하의 아동 등의 생명 또는 신체의 보호를 위하여 개인위치정보의 이용 또는 제공에 동의를 하고자 하는 보호의무자는 서면동의서에 보호의무자임을 증명하는 서면을 첨부하여 회사에 제출하여야 합니다.
보호의무자는 8세 이하의 아동 등의 개인위치정보 이용 또는 제공에 동의하는 경우 개인위치정보주체 권리의 전부를 행사할 수 있습니다.
제14조 (회사의 주소 및 연락처 등)
            
회사의 상호, 주소 및 연락처는 아래와 같습니다.
            
상호 : 주식회사 콘마켓
대표 : 김재현, 김용현
주소 : 서울특별시 구로구 디지털로30길 28, 609호 (콘서비스)
대표전화 : 1644-9736
회사는 개인위치정보를 적절히 관리·보호하고, 개인위치정보주체의 불만을 원활히 처리할 수 있도록 실질적인 책임을 질 수 있는 지위에 있는 자를 위치정보관리책임자로 지정해 운영하고 있으며, 위치정보관리책임자의 성명과 연락처는 아래와 같습니다.
            
성명 : 정창훈
대표전화 : 1644-9736
이메일주소 : contact@corn.com
제15조 (양도금지)
            
회원의 서비스 받을 권리는 이를 양도 내지 증여하거나 담보제공 등의 목적으로 처분할 수 없습니다.
            
제16조 (손해배상)
            
회사가 위치정보법 제15조 내지 제26조의 규정을 위반한 행위로 회원에게 손해가 발생한 경우 회원은 회사에 대하여 손해배상 청구를 할 수 있습니다. 이 경우 회사는 고의, 과실이 없음을 입증하지 못하는 경우 책임을 면할 수 없습니다.
회사가 위치정보법 제15조 내지 제26조의 규정을 위반한 행위로 회원에게 손해가 발생한 경우 회원은 회사에 대하여 손해배상 청구를 할 수 있습니다. 이 경우 회사는 고의, 과실이 없음을 입증하지 못하는 경우 책임을 면할 수 없습니다.
제17조 (면책)
            
회사는 다음 각 호의 경우로 서비스를 제공할 수 없는 경우 이로 인하여 회원에게 발생한 손해에 대해서는 책임을 부담하지 않습니다.
천재지변 또는 이에 준하는 불가항력의 상태가 있는 경우
서비스 제공을 위하여 회사와 서비스 제휴계약을 체결한 제3자의 고의적인 서비스 방해가 있는 경우
회원의 귀책사유로 서비스 이용에 장애가 있는 경우4) 제1호 내지 제3호를 제외한 기타 회사의 고의ㆍ과실이 없는 사유로 인한 경우
회사는 서비스 및 서비스에 게재된 정보, 자료, 사실의 신뢰도, 정확성 등에 대해서는 보증을 하지 않으며 이로 인해 발생한 회원의 손해에 대하여는 책임을 부담하지 아니합니다.
제18조 (분쟁의 조정 및 기타)
            
서비스 이용과 관련하여 회사와 회원 간에 분쟁이 발생하면, 회사는 분쟁의 해결을 위해 회원과 성실히 협의합니다.
전항의 협의에서 분쟁이 해결되지 않은 경우 회사와 회원은 위치정보법 제28조에 의한 방송통신위원회에 재정을 신청하거나, 개인정보보호법 제43조에 의한 방송통신위원회 또는 개인정보분쟁조정위원회에 재정 또는 분쟁조정을 신청할 수 있습니다.
전항으로도 분쟁이 해결되지 않으면 회사와 회원 양 당사자는 민사소송법상의 관할법원에 소를 제기할 수 있습니다.
부칙
            
제1조 (시행일) 본 약관은 2017년 12월 1일부터 시행합니다.
	        </textarea
          >
          <div class="checkbox_wrap">
            <input type="checkbox" id="haveto2" />
            <label for="haveto2">(필수) 서비스 이용약관</label>
          </div>
          <textarea class="rule1" cols="110" rows="10">
콘마켓 (이하 "회사"라 함)은 콘마켓 서비스 가입과 관련하여 아래와 같이 사용자의 개인정보를 수집, 이용합니다.

수집 및 이용 항목	수집 및 이용 목적	보유 및 이용 기간
(필수)휴대폰 번호, 위치 정보, 닉네임, 관심 카테고리, USER ID
(선택-이용자 입력 시) 프로필 사진, 이메일	서비스 이용을 위한 이용자 식별
이용자 개별적 통지 및 고지	회원 탈퇴 시까지
※ 단, 관계 법령 위반에 따른 수사, 조사 등이 진행 중인 경우에는 해당 수사, 조사 종료 시까지 보관하며 내부 규정 혹은 관련 법령에 따라 일정 기간 보관됨.
앱 내 채팅 기능을 사용한 채팅 내용	이용자 간 채팅 서비스 제공, 중고거래 분쟁 조정, 법령이나 이용약관에 반하여 이용자에게 피해를 줄 수 있는 잘못된 이용행위의 방지
검색이력/거래기록/방문기록 등 서비스이용기록, IP주소, 단말기 정보(OS, 화면사이즈, 기기식별값), 광고ID	이상행위 탐지, 부정이용 방지 및 서비스 개선을 위한 분석, 이용자의 관심, 성향에 기반한 개인 맞춤형 상품 추천 서비스(광고 포함)를 제공
이용자는 개인정보의 수집 및 이용 동의를 거부할 권리가 있습니다. 다만 동의 거부 시 당근마켓 서비스를 이용 하실 수 없습니다.
        	</textarea
          >
          <div class="checkbox_wrap">
            <input type="checkbox" id="haveto3" />
            <label for="haveto3">(필수)개인정보 수집 이용 동의</label>
          </div>
          <textarea class="rule1" cols="110" rows="10">
콘마켓 (이하 "회사"라 함)은 마케팅 정보 수신과 관련하여 아래와 같이 이용자의 개인정보를 수집, 이용합니다.

수집 및 이용 항목	수집 및 이용 목적	보유 및 이용 기간
앱 내 알림
서비스에서 제공하는 혜택, 이벤트, 상품정보, 신규서비스 안내	회원 탈퇴 시 혹은 동의 철회 시까지
이용자는 개인정보의 수집 및 이용 동의를 거부할 권리가 있습니다. 다만 동의 거부 시 서비스에서 제공하는 혜택, 이벤트, 상품정보 등의 안내를 받으실 수 없습니다.
        	</textarea
          >
          <div class="checkbox_wrap">
            <input type="checkbox" id="haveto4" />
            <label for="haveto4">(선택)마케팅 정보 수신 동의</label>
          </div>
        </div>

        <div class="join_rule2">
          <input type="radio" id="ageup" name="age" class="rule2-1" checked />
          <lable for="ageup">만 14세 이상입니다</lable>
          <input type="radio" id="agedown" name="age" class="rule2-2" /> <label for="agedown">만 14세 미만입니다</label>
        </div>
        <div class="join_wrap">
          <div class="join_first">
            <div class="join_main" id="name">이름</div>
            <input type="text" class="join_input" name="user_name" id="member_name" />
          </div>
          <div class="join_first">
            <div class="non_hidden">
              <div class="join_main">아이디</div>
              <input type="text" class="join_input" name="user_id" id="member_id" /><br />
              <input
                type="button"
                class="join_check_again"
                onclick="idcheck()"
                value="중복확인"
                id="idCheck"
                type="button"
              />
              <!--   id값변경 doublecheck_id-> idCheck -->
            </div>
            <p id="id_error" class="error"></p>
          </div>
          <div class="join_first">
            <div class="join_main">닉네임</div>
            <input type="text" class="join_input" name="nickname" id="member_nm" />
            <input type="button" class="join_check_again" value="중복확인" onclick="nickcheck()" id="id_dbcheck" />
          </div>
          <div class="join_first">
            <div class="join_main">비밀번호</div>
            <input type="password" class="join_input" name="user_pw" id="member_pw" onchange="pw_dbcheck()" />
          </div>
          <div class="join_first">
            <div class="non_hidden1">
              <div class="join_main">비밀번호 확인</div>
              <input type="password" class="join_input" name="member_pw_db" id="member_pw_db" onchange="pw_dbcheck()" />
            </div>
            <p id="pw_error" class="pw_error"></p>
          </div>
          <div class="join_first">
            <div class="join_main">이메일</div>
            <input
              type="text"
              class="join_input"
              name="email"
              id="member_email_f"
              placeholder="ex)cornmarket@gmail.com"
            />
          </div>
          <div class="join_first">
            <div class="join_main">휴대폰번호</div>
            <input type="text" class="join_input" name="phone" id="member_ph" placeholder="010-xxxx-yyyy" />
          </div>
          <div class="join_second">
            <button type="button" class="btn1" id="joinbtn">저장</button>
            <button type="button" onclick="location.href='${path}/main'">취소</button>
          </div>
        </div>
      </form>
    </section>
    <jsp:include page="../base/footer.jsp" />
    <input type="hidden" id="url" value="${path}" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="${path}/resources/js/signup/signUp.js"></script>
  </body>
</html>
