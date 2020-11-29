package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

//oracle ������ ���̽��� �����ϰ� select, insert, update, delete �۾��� �������ִ� Ŭ���� �Դϴ�.
public class MemberDAO {

	  		//����Ŭ�� �����ϴ� �ҽ��� �ۼ�
	
			String id ="system";
			String pass = "123456";
			String url = "jdbc:oracle:thin:@localhost:1521:XE";  //����url
	
			Connection con; //������ ���̽��� �����Ҽ� �ֵ��� ����
			PreparedStatement pstmt; //������ ���̽� ���� ������ ���� ���� �ִ� ��ü
			ResultSet rs; //�����ͺ��̽��� ���̺��� ����� ���� �޾� �ڹٿ� ������ �ִ� ��ü
			
			
			
			
			
	//������ ���̽��� ������ �� �ֵ��� �����ִ� �޼ҵ�
	public void getCon() {
		try {
			
			
			//1.�ش� ������ ���̽��� ����Ѵٰ� ����(Ŭ������ ��� = oracle ���� ���)
			Class.forName("oracle.jdbc.driver.OracleDriver");
			//2. �ش� ������ ���̽��� ����
			con = DriverManager.getConnection(url, id, pass);
			
			
		} catch (Exception e) {
		
		}
		
	}
	
	//������ ���̽��� �ѻ���� ȸ�� ������ �������ִ� �޼ҵ�
	public void insertMember(MemberBean mbean) {
		
		try{
			getCon();
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
		
		
		
	}
	
	
	//��� ȸ���� ������ ������ �ִ� �޼ҵ� ȣ��
	
	public Vector<MemberBean> allSelectMember(){
		//
		Vector<MemberBean> v = new Vector<>();
		
		//������ ���̽��� ������ ����ó�� �������
		try {
			//Ŀ�ؼ� ����
			getCon();
			//���� �غ�
			String sql="select * from table1";
			//������ ������� �ִ� ��ü ����
			pstmt = con.prepareStatement(sql);
			//������ ���� ��Ų ����� �����ؼ� �޾���(����Ŭ ���̺��� �˻��� ����� �ڹٰ�ü�� ����)
			rs = pstmt.executeQuery();
			//�ݺ����� ����ؼ� rs�� ����� �����͸� �����س��ƾ� �Ѵ�
			while(rs.next()) {//����� ������ ��ŭ���� �ݺ����� �����ڴٴ� ��
				
				MemberBean bean = new MemberBean();  //�÷����� �������� �����͸� beanŬ������ ����
				
				bean.setId(rs.getString(1));
				bean.setPass1(rs.getString(2));
				bean.setEmail(rs.getString(3));
				bean.setTel(rs.getString(4));
				bean.setHobby(rs.getString(5));
				bean.setJob(rs.getString(6));
				bean.setAge(rs.getString(7));
				bean.setInfo(rs.getString(8));
				
				//��Ű¡ �� memberbean Ŭ������ ���Ϳ� ����
				v.add(bean); //0���� ���� ������� �����Ͱ� �����
				
				
			}
			//�ڿ��ݳ�
			con.close();
			
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		//�� ����� ���͸� ����
		return v;
		
		
		
	}
	
	
	
	
	
	
	
	
	
	
}
