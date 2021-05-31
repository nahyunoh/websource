package member.persistance;
import static member.persistance.JDBCUtil.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import member.domain.MemberVO;

public class MemberDAO {
	//회원가입(C), 로그인(R), 회원정보수정(U), 회원탈퇴(D) 
	//DML (update, delete, insert)/select(서브쿼리, 조인)
	
	private Connection con;
	
	public MemberDAO(Connection con) {
		this.con=con;
	}
	
	public MemberVO isLogin(String userid, String currentPassword) {
		//로그인이 성공하면, 사용자의 아이디와 이름을 MemberVO에 담기
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		MemberVO vo=null;
		
		try {
			String sql="select userid, name from memberTBL where userid=? and password=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, userid);
			pstmt.setString(2, currentPassword);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				vo=new MemberVO();
				vo.setUserid(rs.getString("userid"));
				vo.setName(rs.getString("name"));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
			
		}return vo;
	}
	
	//회원탈퇴
	public int remove(String userid,String currentPassword) {
		int result=0;
		PreparedStatement pstmt=null;
	
		MemberVO vo=null;
		
		try {
			String sql="delete from memberTBL where userid = ? and password = ?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, userid);
			pstmt.setString(2, currentPassword);
			result=pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}
	
	//회원 비밀번호 수정
	public int update(String userid, String currentPassword, String changePassword) {
		//userid와 currensPassword가 일치하면 현재 비밀번호를 새로운 비밀번호로 변경
		int result=0;
		PreparedStatement pstmt=null;
		
		try {
			String sql="update memberTBL set password=? where userid=? and password=?";
			
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, changePassword);
			pstmt.setString(2, userid);
			pstmt.setString(3, currentPassword);
			result=pstmt.executeUpdate();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}
	
	//회원가입
	public int insert(MemberVO vo) {
		int result=0;
		PreparedStatement pstmt=null;
	
		try {
			String sql="insert into memberTBL(userid, password,name,gender,email) ";
			sql+=" values(?,?,?,?,?)";
			
			pstmt=con.prepareStatement(sql); //연결 
			
			pstmt.setString(1,vo.getUserid());
			pstmt.setString(2, vo.getPassword());
			pstmt.setString(3, vo.getName());
			pstmt.setString(4, vo.getGender());
			pstmt.setString(5, vo.getEmail()); //담기

			result=pstmt.executeUpdate(); //실행
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}
}
