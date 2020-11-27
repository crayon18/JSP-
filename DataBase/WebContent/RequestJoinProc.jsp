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
	
		//취미 부분은 별도로 읽어드려 다시 빈클래스에 저장
		
		String [] hobby = request.getParameterValues("hobby");
		//배열에 있는 내용을 하나의 스트링으로 저장
		
		String texthobby = "";
		
		for(int i = 0; i<hobby.length; i++){
			
			texthobby += hobby[i]+" ";
		}
	%>
	
	<!-- useBean을 이용하여 한꺼번에 데이터를 받아옴  -->
	<jsp:useBean id="mbean" class="db.MemberBean">
		<jsp:setProperty name="mbean" property="*"/> <!-- 맵핑시키시오 -->
	</jsp:useBean>
	
	<%
	
		mbean.setHobby(texthobby); //기존 취미는 주소번지가 저장되기에  위 배열의 내용을 하나의 스트링으로 저장한 변수를 다시 입력

		//오라클에 접속하는 소스를 작성
		
		String id ="system";
		String pass = "123456";
		String url = "jdbc:oracle:thin:@localhost:1521:XE";  //접속url
		
		try{
			//1.해당 데이터 베이스를 사용한다고 선언(클래스를 등록 = oracle 용을 사용)
			Class.forName("oracle.jdbc.driver.OracleDriver");
			//2. 해당 데이터 베이스에 접속
			Connection con = DriverManager.getConnection(url,id,pass);
			//3. 접속후 쿼리준비
			String sql="insert into TABLE1 values(?,?,?,?,?,?,?,?)";
			//쿼리를 사용하도록 설정
			PreparedStatement pstmt = con.prepareStatement(sql); // jsp에서 쿼리를 사용하도록 설정
			//?에 맞게 데이터를 맵핑
			pstmt.setString(1, mbean.getId());
			pstmt.setString(2, mbean.getPass1());
			pstmt.setString(3, mbean.getEmail());
			pstmt.setString(4, mbean.getTel());
			pstmt.setString(5, mbean.getHobby());   
			pstmt.setString(6, mbean.getJob());
			pstmt.setString(7, mbean.getAge());
			pstmt.setString(8, mbean.getInfo());
			
			//4. 오라클에서 쿼리를 실행하시오
			pstmt.executeUpdate(); //insert, update, delete 시 사용하는 메소드
			
			//5. 자원 반납
			con.close();  //왓다갓다 자원 쌓이면 안돼니까 짤
			
			
			
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
	%>
	
	오라클 완료~
	
</body>
</html>