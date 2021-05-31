package user.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import lombok.AllArgsConstructor;
import user.domain.UserVO;
import user.service.UserModifyService;

@AllArgsConstructor
public class ModifyAction implements Action {
   
   private String path; //modify.jsp
   

   @Override
   public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
      
      //사용자가 넘긴 값 가져오기
      int no = Integer.parseInt(request.getParameter("no"));
      
      //서비스
      UserModifyService service = new UserModifyService();
      UserVO vo = service.modify(no);
      
      //vo라는 이름으로 vo를 공유한다. request set-> forward로 보낸다.
      request.setAttribute("vo", vo);
      
      //ActionForward 객체 생성
      return new ActionForward(path, false);
   }

}