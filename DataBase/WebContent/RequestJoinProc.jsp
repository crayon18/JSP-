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

		//����Ŭ�� �����ϴ� �ҽ��� �ۼ�
		
		String id ="system";
		String pass = "123456";
		String url = "jdbc:oracle:thin:@localhost:1521:XE";  //����url
		
		try{
			//1.�ش� ������ ���̽��� ����Ѵٰ� ����(Ŭ������ ��� = oracle ���� ���)
			Class.forName("oracle.jdbc.driver.OracleDriver");
			//2. �ش� ������ ���̽��� ����
			Connection con = DriverManager.getConnection(url,id,pass);
			//3. ������ �����غ�
			String sql="insert into TABLE1 values(?,?,?,?,?,?,?,?)";
			//������ ����ϵ��� ����
			PreparedStatement pstmt = con.prepareStatement(sql); // jsp���� ������ ����ϵ��� ����
			//?�� �°� �����͸� ����
			pstmt.setString(1, mbean.getId());
			pstmt.setString(2, mbean.getPass1());
			pstmt.setString(3, mbean.getEmail());
			pstmt.setString(4, mbean.getTel());
			pstmt.setString(5, mbean.getHobby());   
			pstmt.setString(6, mbean.getJob());
			pstmt.setString(7, mbean.getAge());
			pstmt.setString(8, mbean.getInfo());
			
			//4. ����Ŭ���� ������ �����Ͻÿ�
			pstmt.executeUpdate(); //insert, update, delete �� ����ϴ� �޼ҵ�
			
			//5. �ڿ� �ݳ�
			con.close();  //�Ӵٰ��� �ڿ� ���̸� �ȵŴϱ� ©
			
			
			
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
	%>
	
	����Ŭ �Ϸ�~
	
</body>
</html>