package user.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import lombok.AllArgsConstructor;
import user.domain.UserVO;
import user.service.UserListService;

@AllArgsConstructor
public class ListAction implements Action {

   private String path;
   
   @Override
   public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

      //전체 리스트 요청하는 작업 처리
      //service하기
      //사용자가 보내는 값 x => list
      UserListService service = new UserListService();
      List<UserVO> list = service.list();
      
      request.setAttribute("list", list);
      
      return new ActionForward(path,false);
   }

}