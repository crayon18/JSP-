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

	//아이디 저장 체크 박스가 체크 되었는지 판단여부
	String save = request.getParameter("save");
	
	//아이디 값을 저장
	String id = request.getParameter("id");
	
	//체크되었는지를 비교 판단
	if(save != null){//save값이 null이 아니라면 = 아이디 저장이 눌렸다면
	
	//쿠키를 사용 하려면 쿠키클래스를 생성해주어야 한다
	Cookie cookie = new Cookie("id", id); //매개변수를 넣어줘야한다 , 1번째 String 키값을 적어준다 2번째는 해당하는 value값을 넣어준다
	//쿠키 유효시간 설정
	cookie.setMaxAge(60*3);
	
	//사용자에게 쿠키 값을 넘겨줌
	response.addCookie(cookie);
	
		out.write("쿠키생성완료");
	}
	
	
	
%>

</body>
</html>