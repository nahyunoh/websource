package member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import lombok.AllArgsConstructor;
import member.domain.MemberVO;
import member.service.MemberModifyService;
@AllArgsConstructor
public class MemberModifyAction implements Action {
	private String path;
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String currentPassword=request.getParameter("current_password");
		String newPassword=request.getParameter("new_password");
		String confirmPassword=request.getParameter("confirm_password");
		
		HttpSession session=request.getSession();
		MemberVO vo=(MemberVO)session.getAttribute("loginVO");
		
		
		if(newPassword.equals(confirmPassword)) {
			path="/view/modifyForm.jsp";
		}else {
			MemberModifyService service=new MemberModifyService();
			boolean modifyFlag=service.modify(vo.getUserid(), currentPassword, newPassword);
			
			if(!modifyFlag) {
				path="/view/modifyForm.jsp";
			}else {
				session.removeAttribute("loginVO");
			}
		}
	
		
		return new ActionForward(path,true);
	}
}
