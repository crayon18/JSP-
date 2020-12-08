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
		//사용자 컴퓨터의 쿠키 저장소로 부터 쿠키 값을 읽어드림 몇개인지 모르기에 배열을 이용하여 쿠키값을 저장
		Cookie[] cookies = request.getCookies();
	String id = "";
	
		//쿠기값이 없을수도 있기 때문에 null처리 해줘야함
		if(cookies != null){
			for(int i = 0 ; i< cookies.length; i++){
				if(cookies[i].getName().equals("id")){
					id = cookies[i].getValue();
					break; //우리가 원하는 데이터를 찾았으니까 빠져 나옴
				}
			}
			
			
		}
	
	
	%>



	<center>
	<h2>쿠키 로그인</h2>
	<form action="CookieLgoinProc.jsp" method="post">
<table width="400" border="1">
	<tr height="50">
		<td width="150">아이디</td>
		<td width="250"><input type="text" name="id" value="<%=id %>"></td>
	</tr>
	<tr height="50">
		<td width="150">비밀번호</td>
		<td width="250"><input type="password" name="pass"></td>
	</tr>
	<tr height="50">
		<td colspan="2" align="center"><input type="checkbox" name="save" value="1">아이디 저장</td>
	</tr>
	<tr height="50">
		<td colspan="2" align="center"><input type="submit" value="로그인"></td>
	</tr>
</table>	
	</form>	
	</center>



</body>
</html>