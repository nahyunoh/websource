package book.service;

import static book.persistance.JDBCUtil.*;

import java.sql.Connection;

import book.domain.BookVO;
import book.persistance.BookDAO;

public class BookInsertService {
	public boolean bookInsert(BookVO vo) {
		//bookInsert()
	Connection con=getConnection();
	BookDAO dao=new BookDAO(con);
	int result=dao.insert(vo);
	
	boolean insertFlag=false;
	
	if(result>0) {
		insertFlag=true;
		commit(con);
	}else{
		rollback(con);
	}
	close(con);
	
	
	return insertFlag;
	}
	
}
