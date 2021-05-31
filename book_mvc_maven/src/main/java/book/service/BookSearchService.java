package book.service;

import static book.persistance.JDBCUtil.*;

import java.sql.Connection;
import java.util.List;

import book.domain.BookVO;
import book.persistance.BookDAO;
public class BookSearchService {
	//search()
	public List<BookVO> search(String criteria, String keyword) {
		Connection con=getConnection();
		BookDAO dao=new BookDAO(con);
		List<BookVO> searchList=dao.searchList(criteria, keyword);
		
		close(con);
		
		return searchList;
		
	}
	
}
