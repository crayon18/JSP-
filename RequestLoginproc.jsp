<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>


<!-- RequestLogin���� �Ѿ�� ���̵�� �н����带 �о����� �մϴ�  -->


<%
	//������� ������ ����Ǿ� �ִ� ��ü request �� getParameter() ������� ������ ȣ�� 
	String id = request.getParameter("id"); //������� id���� �о����� ���� id �� ����
	String pass = request.getParameter("pass"); //pass ����
%>

	����� ���̵�� <%= id %> �̰� ����� ��й�ȣ�� <%= pass %> �Դϴ�


<!-- //request ������ ���������������̴�!// -->
</body>
</html>