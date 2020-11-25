<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<center>
	<h2>회원 정보 보기</h2>
	<%
	request.setCharacterEncoding("euc-kr");
	%>
	
	<!-- request로 넘어온 데이터를 자바 빈즈랑 맵핑 시켜주는 useBean -->
	<jsp:useBean id="mbean" class="bean.MemberBean"><!-- 객채생성 MemberBean mbean = new MemberBean(); -->
	<!-- jsp 내용을 자바빈 클래스(MemberBean 의미) 에 데이터를 맵핑(넣어준다 라는 의미) -->
		<jsp:setProperty name="mbean" property="*" />	<!-- *자동으로 모두 맵핑시켜라 -->
	</jsp:useBean>

	
	<h2>당신의 아이디는 <jsp:getProperty property="id" name="mbean" /></h2>
	<h2>당신의 패스 <jsp:getProperty property="pass1" name="mbean" /></h2>
	<h2>당신의 전화는 <%= mbean.getTell() %>
	</h2>
	
	
	</center>

</body>
</html>