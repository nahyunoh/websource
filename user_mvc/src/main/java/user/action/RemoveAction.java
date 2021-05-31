package user.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import lombok.AllArgsConstructor;
import user.service.UserRemoveService;

@AllArgsConstructor
public class RemoveAction implements Action {
   private String path;
   
   
   @Override
   public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
      
      //사용자가 보낸 값 가져오기
      int no = Integer.parseInt(request.getParameter("no"));
      
      //서비스
      UserRemoveService service = new UserRemoveService();
      boolean deleteFlag = service.delete(no);
      
      
      if(!deleteFlag) {
         path ="view.do?no="+no;
      }
      
      //이동방식 결정 후 ActionForward객체 생성
      return new ActionForward(path, true);
   }

}