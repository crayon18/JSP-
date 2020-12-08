<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%	//로그아웃 클릭시 파라미터를 통해서 로그 아웃인지를 확인함
	String logout = request.getParameter("logout");
	
	if(logout != null){
				//아이디에 null값을 부여
				session.setAttribute("id", null);
				//즉시 세션 유지 시간을 죽여라
				session.setMaxInactiveInterval(0);
	}

	//세션을 통해 id를 읽어드림
	String id = (String)session.getAttribute("id");
	//로그인이 되어 있지 않다면 session값이 null 이기때문에 null처리를 해준다
	if(id == null){
		id="손님";
	}
%>



<table width="800">
		<tr height="100">
		<!-- 로고이미지 -->
		<td colspan="2" align="center" width="220">
		<img alt="" src="img/jang.jpg" width="200" height="70">
		</td>
		<td colspan="5" align="center">
		<font size="10"><a href="SessionMain.jsp">장부인 스토어</a></font>
		</td>
		</tr>
	
	<tr height="50">
		<td width="100" align="center">마스크</td>
		<td width="100" align="center">생활용품</td>
		<td width="100" align="center">인테리어</td>
		<td width="100" align="center">방한용품</td>
		<td width="100" align="center">주방용품</td>
		<td width="100" align="center">트랜드</td>
		<td width="200" align="center">
		<%
		if(id.equals("손님")){
		%>
			<%=id %>님 <button onclick="location.href='SessionMain.jsp?center=SessionLoginForm.jsp'">로그인</button>
		<% } else { %>
			<%=id %>님	<button onclick="location.href='SessionMain.jsp?logout=1'">로그아웃</button>
		<%
		}
		%>
		</td>
	</tr>
</table>
</body>
</html>