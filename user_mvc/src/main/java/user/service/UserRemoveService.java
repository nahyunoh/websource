package user.service;

import java.sql.Connection;


import user.persistance.UserDAO;

import static user.persistance.JDBCUtil.*;


public class UserRemoveService {

   public boolean delete(int no){
   boolean deleteFlag = false;
   Connection con = getConnection();
   UserDAO dao = new UserDAO(con);
   
   int result = dao.remove(no);
   
   if(result>0) {
      deleteFlag = true;
      commit(con);
      
   }else {
      rollback(con);
   }
   close(con);
   
   return deleteFlag;
   
   }
}