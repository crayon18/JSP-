<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<center>
	<h2>ȸ�� ���� ����</h2>
	<%
	request.setCharacterEncoding("euc-kr");
	%>
	
	<!-- request�� �Ѿ�� �����͸� �ڹ� ����� ���� �����ִ� useBean -->
	<jsp:useBean id="mbean" class="bean.MemberBean"><!-- ��ä���� MemberBean mbean = new MemberBean(); -->
	<!-- jsp ������ �ڹٺ� Ŭ����(MemberBean �ǹ�) �� �����͸� ����(�־��ش� ��� �ǹ�) -->
		<jsp:setProperty name="mbean" property="*" />	<!-- *�ڵ����� ��� ���ν��Ѷ� -->
	</jsp:useBean>

	
	<h2>����� ���̵�� <jsp:getProperty property="id" name="mbean" /></h2>
	<h2>����� �н� <jsp:getProperty property="pass1" name="mbean" /></h2>
	<h2>����� ��ȭ�� <%= mbean.getTell() %>
	</h2>
	
	
	</center>

</body>
</html>