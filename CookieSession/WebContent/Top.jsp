<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%	//�α׾ƿ� Ŭ���� �Ķ���͸� ���ؼ� �α� �ƿ������� Ȯ����
	String logout = request.getParameter("logout");
	
	if(logout != null){
				//���̵� null���� �ο�
				session.setAttribute("id", null);
				//��� ���� ���� �ð��� �׿���
				session.setMaxInactiveInterval(0);
	}

	//������ ���� id�� �о�帲
	String id = (String)session.getAttribute("id");
	//�α����� �Ǿ� ���� �ʴٸ� session���� null �̱⶧���� nulló���� ���ش�
	if(id == null){
		id="�մ�";
	}
%>



<table width="800">
		<tr height="100">
		<!-- �ΰ��̹��� -->
		<td colspan="2" align="center" width="220">
		<img alt="" src="img/jang.jpg" width="200" height="70">
		</td>
		<td colspan="5" align="center">
		<font size="10"><a href="SessionMain.jsp">����� �����</a></font>
		</td>
		</tr>
	
	<tr height="50">
		<td width="100" align="center">����ũ</td>
		<td width="100" align="center">��Ȱ��ǰ</td>
		<td width="100" align="center">���׸���</td>
		<td width="100" align="center">���ѿ�ǰ</td>
		<td width="100" align="center">�ֹ��ǰ</td>
		<td width="100" align="center">Ʈ����</td>
		<td width="200" align="center">
		<%
		if(id.equals("�մ�")){
		%>
			<%=id %>�� <button onclick="location.href='SessionMain.jsp?center=SessionLoginForm.jsp'">�α���</button>
		<% } else { %>
			<%=id %>��	<button onclick="location.href='SessionMain.jsp?logout=1'">�α׾ƿ�</button>
		<%
		}
		%>
		</td>
	</tr>
</table>
</body>
</html>