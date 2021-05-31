package user.persistance;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import user.domain.UserVO;

import static user.persistance.JDBCUtil.*;

public class UserDAO {
	private Connection con;
	
	public UserDAO(Connection con) {
		this.con=con;
	}
	
	//CRUD
	  public int insert(UserVO user) {
	      PreparedStatement pstmt = null;
	      int result = 0;
	      try {
	         String sql = "insert into usertbl(no,username,birthyear,addr,mobile) values(user_seq.nextVal,?,?,?,?)";
	         pstmt = con.prepareStatement(sql);
	         pstmt.setString(1,user.getUsername());
	         pstmt.setInt(2,user.getBirthyear());
	         pstmt.setString(3,user.getAddr());
	         pstmt.setString(4,user.getMobile());

	         result = pstmt.executeUpdate();
	      }catch(Exception e) {
	         e.printStackTrace();
	         
	      }finally {
	         close(pstmt);
	         
	      }
	      return result;
	      
	   }

	//R
	//전체조회
	public List<UserVO> getList(){
		List<UserVO> list=new ArrayList<UserVO>();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		
		try {
			  //전체조회 select * from usertbl;
			String sql="select * from usertbl";
			
			pstmt=con.prepareStatement(sql);
			

			rs=pstmt.executeQuery(); //실행-rs에 담기
			while(rs.next()){
				UserVO vo=new UserVO();
				vo.setNo(rs.getInt("no"));
				vo.setUsername(rs.getString("username"));
				vo.setBirthyear(rs.getInt("birthyear"));
				vo.setAddr(rs.getString("addr"));
				vo.setMobile(rs.getString("mobile"));
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}
		return list;
 	}
	
	//개별조회
	public UserVO getRow(int no) {
		UserVO vo=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			String sql="select * from usertbl where no=?";
		  	
		  	pstmt=con.prepareStatement(sql);
		  	pstmt.setInt(1,no);

		  	rs=pstmt.executeQuery(); //실행-rs에 담기
		  	if(rs.next()){
		  		vo=new UserVO();
		  		vo.setNo(rs.getInt("no"));
		  		vo.setUsername(rs.getString("username"));
		  		vo.setBirthyear(rs.getInt("birthyear"));
		  		vo.setAddr(rs.getString("addr"));
		  		vo.setMobile(rs.getString("mobile"));
		  		
		  	}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}return vo;
	}
	
	public int remove(int no) {
		int result=0;
		PreparedStatement pstmt=null;
		try {
		String sql="delete from usertbl where no=?";
		pstmt=con.prepareStatement(sql);
		
		pstmt.setInt(1,no);
		result=pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}return result;
	}
	
	
	public int update(int no, String addr, String mobile) {
		int result=0;
		PreparedStatement pstmt=null;
		
		try {
			String sql ="update usertbl set addr=?, mobile=? where no=? ";
			pstmt=con.prepareStatement(sql);
			
			pstmt.setString(1,addr);
			pstmt.setString(2,mobile);
			pstmt.setInt(3,no);

			result=pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}
}
