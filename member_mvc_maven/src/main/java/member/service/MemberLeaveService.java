package member.service;
import static member.persistance.JDBCUtil.*;

import java.sql.Connection;

import member.persistance.MemberDAO;

public class MemberLeaveService {
	//leave
	public boolean leave(String userid, String currentPassword) {
		Connection con=getConnection();
		MemberDAO dao=new MemberDAO(con);
		
		boolean removeFlag=false;
		
		int result=dao.remove(userid, currentPassword);
		
		if(result>0) {
			removeFlag=true;
			commit(con);
		}else {
			rollback(con);
		}
		close(con);
		return removeFlag;
	}
}
