package member.service;

import java.sql.Connection;

import member.domain.MemberVO;
import member.persistance.MemberDAO;

import static member.persistance.JDBCUtil.*;
public class MemberLoginService {
	//login()
	public MemberVO login(String userid, String currentPassword) {
		Connection con =getConnection();
		MemberDAO dao=new MemberDAO(con);
		
		MemberVO login=dao.isLogin(userid, currentPassword);
		
		close(con);
		return login;
	}
}



   
   
  
    