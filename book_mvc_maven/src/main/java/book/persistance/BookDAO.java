package book.persistance;

import java.awt.print.Book;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import book.domain.BookVO;

import static book.persistance.JDBCUtil.*;

public class BookDAO {
	private Connection con;

	public BookDAO(Connection con) {
		super();
		this.con = con;
	}
	
	//전체 목록 가져오기
	public List<BookVO> getList(){
		List<BookVO> list=new ArrayList();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		try {
			String sql="select * from bookTBL";
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				BookVO vo=new BookVO();
				vo.setCode(rs.getInt("code"));
				vo.setTitle(rs.getString("title"));
				vo.setWriter(rs.getString("writer"));
				vo.setPrice(rs.getInt("price"));
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			
		}
		return list;
	}
	
	public int insert(BookVO vo) {
		int result=0;
		PreparedStatement pstmt=null;
		try {
			String sql="insert into bookTBL(code, title, writer, price) values(?,?,?,?)";
					
	         pstmt = con.prepareStatement(sql);
	         pstmt.setInt(1,vo.getCode());
	         pstmt.setString(2,vo.getTitle());
	         pstmt.setString(3,vo.getWriter());
	         pstmt.setInt(4,vo.getPrice());
	         
	         result=pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}
	
	//delete
	public int delete(int code) {
		int result=0;
		PreparedStatement pstmt=null;
		try {
			
			String sql="delete from bookTBL where code=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, code);
			result=pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}
	
	//update
	public int update(int code , int price) {
		int result=0;
		PreparedStatement pstmt=null;
		
		try {
			String sql="update bookTBL set price=? where code=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, price);
			pstmt.setInt(2, code);
			result=pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}
	
	//search
	public List<BookVO> searchList(String criteria, String keyword){
		List<BookVO> list=new ArrayList();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		try {
			String sql="select * from bookTBL where "+criteria+" = ?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, keyword);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				BookVO vo=new BookVO();
				vo.setCode(rs.getInt("code"));
				vo.setTitle(rs.getString("title"));
				vo.setWriter(rs.getString("writer"));
				vo.setPrice(rs.getInt("price"));
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
}
