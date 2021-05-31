package user.service;

import java.sql.Connection;
import java.util.List;

import user.domain.UserVO;
import user.persistance.UserDAO;

import static user.persistance.JDBCUtil.*;

public class UserListService {
   
   public List<UserVO> list() {
      //DB작업
      Connection con = getConnection();
      UserDAO dao = new UserDAO(con);
      List<UserVO> list =dao.getList();
      
      close(con);
      return list;
      
   }

}