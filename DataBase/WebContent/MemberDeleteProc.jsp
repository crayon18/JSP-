<%@page import="db.MemberDAO" %>
<%@page import="db.MemberBean" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="mbean" class="db.MemberBean">
		<jsp:setProperty name="mbean" property="*"/>
	</jsp:useBean>


	<%
	MemberDAO mdao = new MemberDAO();
	String pass = mdao.getPass(mbean.getId());
	
	
	if(mbean.getPass1().equals(pass)){
		mdao.deleteMember(mbean.getId());
		response.sendRedirect("MemberList.jsp");
	}else{
		%>
		<script type="text/javascript">
			alert("패스워드가 맞지 않습니다. 다시 확인해 주세요");
			history.go(-1);
		</script>
		<% 
	}
		%>
	
	
	%>

<
</body>
</html>