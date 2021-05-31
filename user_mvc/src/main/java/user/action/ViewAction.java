package user.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import lombok.AllArgsConstructor;
import user.domain.UserVO;
import user.service.UserViewService;

@AllArgsConstructor
public class ViewAction implements Action {
   private String path;
   
   
   @Override
   public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

      //사용자가 보내는 값 가져오기
      
      int no = Integer.parseInt(request.getParameter("no"));
      
      //서비스 작업 하기 
      UserViewService service = new UserViewService();
      UserVO vo = service.select(no);
      
      //selectone에 쓰기 위해 담기
      request.setAttribute("vo", vo);
   
      //이동방식 결결정 후 action forward 객체 생성
      return new ActionForward(path, false);
   }

}