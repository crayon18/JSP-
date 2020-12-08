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
		
	
		//center값을 변경해주기위해서 request객체를 이용하여 center값을 받아 온다
		String center = request.getParameter("center");
	
	
		//처음 SessionMain.jsp 를 실행하면 null값이 실행되기에 null처리를 해준다
		if(center == null){
			center = "Center.jsp";
		}
	%>




	<center>
	<table width ="800" border="1">
	<tr height="150">
		<td align="center" colspan="2">
		<jsp:include page="Top.jsp"/>
		</td>
	</tr>

	<tr height="400">
		<td align="center">
		<jsp:include page="Left.jsp"/>
		</td>
		
		<td align="center" width="600">
		<jsp:include page="<%=center %>"/>
		</td>
	</tr>
	
	<tr height="100">
		<td align="center" colspan="2">
		<jsp:include page="Bottom.jsp"/>
		</td>
		</tr>
	
	</table>
	</center>
	
</body>
</html>