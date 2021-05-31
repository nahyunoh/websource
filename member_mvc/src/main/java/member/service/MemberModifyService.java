package member.service;

import java.sql.Connection;

import member.persistance.MemberDAO;

import static member.persistance.JDBCUtil.*;

public class MemberModifyService {
	//modify()
	public boolean modify(String userid,String currentPassword,String changePassword) {
		Connection con = getConnection();
		MemberDAO dao = new MemberDAO(con);
		
		boolean modifyFlag=false;		
		
		int result=dao.update(userid, currentPassword, changePassword);
		
		if(result>0) {
			modifyFlag=true;
			commit(con);
		}else {
			rollback(con);
		}
		close(con);
		return modifyFlag;
	}
}