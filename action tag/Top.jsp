<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!-- top -->
	<table width="800">
		<tr height="100">
		<!-- �ΰ��̹��� -->
		<td colspan="2" align="center" width="260">
		<img alt="" src="img/jang.jpg" width="150" height="150">
		</td>
		<td colspan="4" align="center">
		<font size="10">����� �����</font>
		</td>
		</tr>
	
	<tr height="50">
		<td width="110" align="center">����ũ</td>
		<td width="110" align="center">��Ȱ��ǰ</td>
		<td width="110" align="center">���׸���</td>
		<td width="110" align="center">���ѿ�ǰ</td>
		<td width="110" align="center">�ֹ��ǰ</td>
		<td width="110" align="center">Ʈ����</td>
		<td width="140" align="center"><%= request.getParameter("id") %></td>
	</tr>
</table>
</body>
</html>