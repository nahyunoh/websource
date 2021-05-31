package member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import lombok.AllArgsConstructor;
import member.domain.MemberVO;
import member.service.MemberJoinService;
@AllArgsConstructor
public class MemberJoinAction implements Action {
	private String path;
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		
		MemberVO vo=new MemberVO();
		vo.setUserid(request.getParameter("userid"));
		vo.setPassword(request.getParameter("password"));
		vo.setConfirmPassword(request.getParameter("confirm_password"));
		vo.setName(request.getParameter("name"));
		vo.setGender(request.getParameter("gender"));
		vo.setEmail(request.getParameter("email"));
		
		
		
		if(vo.passwordEqualsConfirmPassword()) {
			MemberJoinService service=new MemberJoinService();
			boolean insertFlag=service.register(vo);
			
			if(!insertFlag) {
				path="/view/joinForm.jsp";
			}
		}else {
			path="/view/joinForm.jsp";
		}
		
		return new ActionForward(path,true);
	}

}
