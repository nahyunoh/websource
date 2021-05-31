package book.service;
import static book.persistance.JDBCUtil.*;
import java.sql.Connection;

import book.persistance.BookDAO;

public class BookModifyService {
	//modify()
	public boolean modify(int code, int price) {
		Connection con=getConnection();
		BookDAO dao=new BookDAO(con);
		
		 int result = dao.update(code, price);
		  
		  boolean modifyFlag=false;
		   
		   if(result>0) {
			  modifyFlag = true;
		      commit(con);
		      
		   }else {
		      rollback(con);
		   }
		   close(con);
		   
		   return modifyFlag;
	
	}
	
}
