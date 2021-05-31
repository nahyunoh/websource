package book.service;

import java.sql.Connection;
import java.util.List;

import book.domain.BookVO;
import book.persistance.BookDAO;

import static book.persistance.JDBCUtil.*;

public class BookListService {
	public List<BookVO> list(){
		Connection con=getConnection();
		BookDAO dao=new BookDAO(con);
		List<BookVO> list=dao.getList();
		
		close(con);
		
		return list;
	}
}
