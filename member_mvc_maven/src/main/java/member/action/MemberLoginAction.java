package member.action;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import lombok.AllArgsConstructor;
import member.domain.MemberVO;
import member.service.MemberLoginService;

@AllArgsConstructor
public class MemberLoginAction implements Action {
   
   private String path; //loginForm.jsp

   @Override
   public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

      String userid = request.getParameter("userid");
      String current_Password = request.getParameter("current_Password");
      
      MemberLoginService service = new MemberLoginService();
      MemberVO login = service.login(userid, current_Password);
      
      HttpSession session = request.getSession();
      session.setAttribute("loginVO", login);
      
      return new ActionForward(path, true);
   }

}