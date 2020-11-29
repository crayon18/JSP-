package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

//oracle 데이터 베이스에 연결하고 select, insert, update, delete 작업을 실행해주는 클래스 입니다.
public class MemberDAO {

	  		//오라클에 접속하는 소스를 작성
	
			String id ="system";
			String pass = "123456";
			String url = "jdbc:oracle:thin:@localhost:1521:XE";  //접속url
	
			Connection con; //데이터 베이스에 접근할수 있도록 설정
			PreparedStatement pstmt; //데이터 베이스 에서 쿼리를 실행 시켜 주는 객체
			ResultSet rs; //데이터베이스의 테이블의 결과를 리턴 받아 자바에 저장해 주는 객체
			
			
			
			
			
	//데이터 베이스에 접근할 수 있도록 도와주는 메소드
	public void getCon() {
		try {
			
			
			//1.해당 데이터 베이스를 사용한다고 선언(클래스를 등록 = oracle 용을 사용)
			Class.forName("oracle.jdbc.driver.OracleDriver");
			//2. 해당 데이터 베이스에 접속
			con = DriverManager.getConnection(url, id, pass);
			
			
		} catch (Exception e) {
		
		}
		
	}
	
	//데이터 베이스에 한사람의 회원 정보를 저장해주는 메소드
	public void insertMember(MemberBean mbean) {
		
		try{
			getCon();
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
		
		
		
	}
	
	
	//모든 회원의 정보를 리턴해 주는 메소드 호출
	
	public Vector<MemberBean> allSelectMember(){
		//
		Vector<MemberBean> v = new Vector<>();
		
		//데이터 베이스는 무조건 예외처리 해줘야함
		try {
			//커넥션 연결
			getCon();
			//쿼리 준비
			String sql="select * from table1";
			//쿼리를 실행시켜 주는 객체 선언
			pstmt = con.prepareStatement(sql);
			//쿼리를 실행 시킨 결과를 리턴해서 받아줌(오라클 테이블의 검색된 결과를 자바객체에 저장)
			rs = pstmt.executeQuery();
			//반복문을 사용해서 rs에 저장된 데이터를 추출해놓아야 한다
			while(rs.next()) {//저장된 데이터 만큼까지 반복문을 돌리겠다는 뜻
				
				MemberBean bean = new MemberBean();  //컬럼으로 나뉘어진 데이터를 bean클래스에 저장
				
				bean.setId(rs.getString(1));
				bean.setPass1(rs.getString(2));
				bean.setEmail(rs.getString(3));
				bean.setTel(rs.getString(4));
				bean.setHobby(rs.getString(5));
				bean.setJob(rs.getString(6));
				bean.setAge(rs.getString(7));
				bean.setInfo(rs.getString(8));
				
				//패키징 된 memberbean 클래스를 백터에 저장
				v.add(bean); //0번지 부터 순서대로 데이터가 저장됨
				
				
			}
			//자원반납
			con.close();
			
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		//다 저장된 백터를 리턴
		return v;
		
		
		
	}
	
	
	
	
	
	
	
	
	
	
}
