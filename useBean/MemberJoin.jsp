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
	<h2>ȸ�� ����</h2>
	<form action="MemberJoinProc.jsp" method="post">
	<table width="500" border="1">
	<tr height="50">
	<td width="150" align="center">���̵�</td>
	<td width="350" align="center"><input type="text" name="id" size="40" placeholder="id��������"></td>  
	</tr>
	<tr height="50">
	<td width="150" align="center">�н�����</td>
	<td width="350" align="center"><input type="password" name="pass1" size="40" placeholder="��й�ȣ�� ������ ���ڸ� �־��ּ���"></td>
	</tr>
	<tr height="50">
	<td width="150" align="center">�̸���</td>
	<td width="350" align="center"><input type="email" name="email" size="40"></td>
	</tr>
	<tr height="50">
	<td width="150" align="center">��ȭ��ȣ</td>
	<td width="350" align="center"><input type="tell" name="tell" size="40"></td>
	</tr>
	<tr height="50">
	<td width="150" align="center">�ּ�</td>
	<td width="350" align="center"><input type="text" name="address" size="40"></td>
	</tr>
	<tr height="50">
	 <td align="center" colspan="2"><input type="submit" value="ȸ������"></td>
	</tr>
	</table>
	</form>
	</center>

</body>
</html>