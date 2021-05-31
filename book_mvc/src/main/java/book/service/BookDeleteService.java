package book.service;

import java.sql.Connection;

import book.persistance.BookDAO;
import static book.persistance.JDBCUtil.*;


public class BookDeleteService {
	public boolean remove(int code) {
	
		 Connection con = getConnection();
		  BookDAO dao = new BookDAO(con);
		  
		  int result = dao.delete(code);
		  
		  boolean removeFlag=false;
		   
		   if(result>0) {
		      removeFlag = true;
		      commit(con);
		      
		   }else {
		      rollback(con);
		   }
		   close(con);
		   
		   return removeFlag;
	}
	//remove()
	
	
}
