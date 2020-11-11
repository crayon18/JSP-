<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>


<!-- RequestLogin에서 넘어온 아이디와 패스워드를 읽어드려야 합니다  -->


<%
	//사용자의 정보가 저장되어 있는 객체 request 의 getParameter() 사용자의 정보를 호출 
	String id = request.getParameter("id"); //사용자의 id값을 읽어드려서 변수 id 의 저장
	String pass = request.getParameter("pass"); //pass 저장
%>

	당신의 아이디는 <%= id %> 이고 당신의 비밀번호는 <%= pass %> 입니다


<!-- //request 범위는 한페이지까지만이다!// -->
</body>
</html>