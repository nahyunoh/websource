package user.service;

import static user.persistance.JDBCUtil.*;

import java.sql.Connection;

import user.persistance.UserDAO;

public class UserUpdateService {
	public boolean updateUser(int no, String addr, String mobile) {
		boolean updateFlag=false;
		
		Connection con=getConnection();
		UserDAO dao=new UserDAO(con);
		int result=dao.update(no, addr, mobile);
		
		if(result>0) {
			commit(con);
			updateFlag=true;
		}else {
			rollback(con);
		}
		close(con);
		
		return updateFlag;
	}
}
