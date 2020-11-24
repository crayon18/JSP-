<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!-- top -->
	<table width="800">
		<tr height="100">
		<!-- 로고이미지 -->
		<td colspan="2" align="center" width="260">
		<img alt="" src="img/jang.jpg" width="150" height="150">
		</td>
		<td colspan="4" align="center">
		<font size="10">장부인 스토어</font>
		</td>
		</tr>
	
	<tr height="50">
		<td width="110" align="center">마스크</td>
		<td width="110" align="center">생활용품</td>
		<td width="110" align="center">인테리어</td>
		<td width="110" align="center">방한용품</td>
		<td width="110" align="center">주방용품</td>
		<td width="110" align="center">트랜드</td>
		<td width="140" align="center"><%= request.getParameter("id") %></td>
	</tr>
</table>
</body>
</html>