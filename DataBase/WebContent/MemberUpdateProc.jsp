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
	//string Ÿ������ ����Ǿ��ִ� �н����带 ������ (�����ͺ��̽� ���� ������ pass ���� ����)
	String pass = mdao.getPass(id);
	
	//�����ϱ����ؼ� �ۼ��� �н����� ���� ���� ������ ���̽� ���� ������ �н����� ���� ��
	if(mbean.getPass1().equals(pass)){//�⺻ �н��� ������ ���̽� �н���  ���ٸ� table1�� ����
		
		//MemberDAO Ŭ���� �� ȸ������ �޼ҵ带 ȣ��
		mdao.updateMember(mbean);
		response.sendRedirect("MemberList.jsp");
		
		
	}else{		
%>		
		<script type="text/javascript">
			alert("�н����尡 ���� �ʽ��ϴ�, �ٽ� Ȯ�ιٶ��ϴ�");
			history.go(-1);
		</script>
<%
	}
%>

</body>
</html>