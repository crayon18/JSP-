<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h3>화면에 구구단을 출력 하시오</h3>
<%

for(int i = 2; i < 10; i++){
	
	for(int j = 1 ; j<10; j++){
		%>
		<%= i%>+<%= j%>=<%= i*j%> &nbsp; &nbsp;
		<%
	}
	%> 
	<br>
	<%
}

%>
</body>
</html>