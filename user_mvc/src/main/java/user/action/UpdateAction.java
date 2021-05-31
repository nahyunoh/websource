
package user.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import lombok.AllArgsConstructor;
import user.domain.UserVO;
import user.service.UserUpdateService;
import user.service.UserViewService;

@AllArgsConstructor
public class UpdateAction implements Action {
   private String path; //수정성공=>view.do 세팅
   
   
   @Override
   public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
	   //가져오기
	   int no=Integer.parseInt(request.getParameter("no"));
	    String addr=request.getParameter("addr");
	   String mobile=request.getParameter("mobile");
	   //서비스
	  UserUpdateService service=new UserUpdateService();
	  boolean updateFlag=service.updateUser(no, addr, mobile);
	  if(!updateFlag) {
		  path="modify.do?no="+no;
	  }else {
		  path +="?no="+no;
	  }
	   //ActionForward 객체 생성
      return new ActionForward(path,false);
   }

}