package member.service;

import static member.persistance.JDBCUtil.*;

import java.sql.Connection;

import member.domain.MemberVO;
import member.persistance.MemberDAO;
import member.persistance.JDBCUtil.*;

public class MemberJoinService {
	//join()
	public boolean register(MemberVO vo) {
		Connection con=getConnection();
		MemberDAO dao=new MemberDAO(con);
		
		boolean insertFlag=false;
		
		int result=dao.insert(vo);
		
		if(result>0) {
			insertFlag=true;
			commit(con);
		}else {
			rollback(con);
		}
		
		
		return insertFlag;
		
	}
}
