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

	//���̵� ���� üũ �ڽ��� üũ �Ǿ����� �Ǵܿ���
	String save = request.getParameter("save");
	
	//���̵� ���� ����
	String id = request.getParameter("id");
	
	//üũ�Ǿ������� �� �Ǵ�
	if(save != null){//save���� null�� �ƴ϶�� = ���̵� ������ ���ȴٸ�
	
	//��Ű�� ��� �Ϸ��� ��ŰŬ������ �������־�� �Ѵ�
	Cookie cookie = new Cookie("id", id); //�Ű������� �־�����Ѵ� , 1��° String Ű���� �����ش� 2��°�� �ش��ϴ� value���� �־��ش�
	//��Ű ��ȿ�ð� ����
	cookie.setMaxAge(60*3);
	
	//����ڿ��� ��Ű ���� �Ѱ���
	response.addCookie(cookie);
	
		out.write("��Ű�����Ϸ�");
	}
	
	
	
%>

</body>
</html>