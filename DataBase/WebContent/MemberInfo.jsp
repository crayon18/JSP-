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

	<!-- 0.memberlist���� �ѱ� id�� �޾��� 1. �����ͺ��̽� ���� �� ȸ���� ������ ���� �´� 2. table�±׸� �̿��Ͽ� ȭ�鿡 ȸ���� ������ ��� -->

<%

	String id = request.getParameter("id");  //memberlist ���� �ѱ� id�� �޾���

	MemberDAO mdao = new MemberDAO();
	MemberBean mbean = mdao.oneSelectMember(id); //�ش��ϴ� id�� ȸ�������� ����

%>

<center>
<h2>ȸ�� ���� ����</h2>
	<table width="400" border="1">
		<tr height="50">
			<td align="center" width="150">���̵�</td>
			<td width="250"><%=mbean.getId() %></td>
		</tr>
			<tr height="50">
			<td align="center" width="150">�̸���</td>
			<td width="250"><%=mbean.getEmail() %></td>
		</tr>
			<tr height="50">
			<td align="center" width="150">��ȭ��ȣ</td>
			<td width="250"><%=mbean.getTel() %></td>
		</tr>
			<tr height="50">
			<td align="center" width="150">���</td>
			<td width="250"><%=mbean.getHobby() %></td>
		</tr>
			<tr height="50">
			<td align="center" width="150">����</td>
			<td width="250"><%=mbean.getInfo() %></td>
		</tr>
			<tr height="50">
			<td align="center" colspan="2">����</td>
			<button onclick="location.href='MemberUpdateForm.jsp?id=<%=mbean.getId()%>'">ȸ������</button>
			<button onclick="location.href='MemberList.jsp'">��Ϻ���</button>
			<button onclick="location.href='MemberJoin.jsp'">ȸ������</button>
			<button onclick="location.href='MemberDeleteForm.jsp?id=<%=mbean.getId()%>'">ȸ������</button>
		</tr>
	</table>
</center>

</body>
</html>