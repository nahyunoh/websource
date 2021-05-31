package member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import lombok.AllArgsConstructor;
@AllArgsConstructor
public class MemberLogoutAction implements Action {
	private String path;
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//세션만 해제하면 됨
		HttpSession session=request.getSession();
		session.removeAttribute("loginVO");
		
		return new ActionForward(path,true);
	}

}
