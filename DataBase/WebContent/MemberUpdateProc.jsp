<%@page import="db.MemberDAO" %>
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
	request.setCharacterEncoding("euc-kr");
	%>
	
	<jsp:useBean id="mbean" class="db.MemberBean">
		<jsp:setProperty name="mbean" property="*"/>
	</jsp:useBean>

<%

	String id = request.getParameter("id");

	MemberDAO mdao = new MemberDAO();
	//string 타입으로 저장되어있는 패스워드를 가져옴 (데이터베이스 에서 가져온 pass 값이 저장)
	String pass = mdao.getPass(id);
	
	//수정하기위해서 작성한 패스워드 값과 기존 데이터 베이스 에서 가져온 패스워드 값을 비교
	if(mbean.getPass1().equals(pass)){//기본 패스와 데이터 베이스 패스가  같다면 table1을 수정
		
		//MemberDAO 클래스 의 회원수정 메소드를 호출
		mdao.updateMember(mbean);
		response.sendRedirect("MemberList.jsp");
		
		
	}else{		
%>		
		<script type="text/javascript">
			alert("패스워드가 맞지 않습니다, 다시 확인바랍니다");
			history.go(-1);
		</script>
<%
	}
%>

</body>
</html>