<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>


<%
	String name = "알리미 어플";
%>

스크립트로 표현시 <%= name %> 이 화면에 출력

<p>

<%

	out.println(name + "이 화면에 출력");

%>

</body>
</html>