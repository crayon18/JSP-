<%@page import="db.MemberDAO"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
	
		//��� �κ��� ������ �о��� �ٽ� ��Ŭ������ ����
		
		String [] hobby = request.getParameterValues("hobby");
		//�迭�� �ִ� ������ �ϳ��� ��Ʈ������ ����
		
		String texthobby = "";
		
		for(int i = 0; i<hobby.length; i++){
			
			texthobby += hobby[i]+" ";
		}
	%>
	
	<!-- useBean�� �̿��Ͽ� �Ѳ����� �����͸� �޾ƿ�  -->
	<jsp:useBean id="mbean" class="db.MemberBean">
		<jsp:setProperty name="mbean" property="*"/> <!-- ���ν�Ű�ÿ� -->
	</jsp:useBean>
	
	<%
	
		mbean.setHobby(texthobby); //���� ��̴� �ּҹ����� ����Ǳ⿡  �� �迭�� ������ �ϳ��� ��Ʈ������ ������ ������ �ٽ� �Է�
		
		//������ ���̽�Ŭ���� ��ü ����
		MemberDAO mdao = new MemberDAO();
		mdao.insertMember(mbean);
		
		//ȸ�� ������ �Ǿ��ٸ� ȸ�� ������ �����ִ� �������� �̵���Ŵ
		response.sendRedirect("MemberList.jsp");
		
	%>
	
	����Ŭ �Ϸ�~
	
</body>
</html>