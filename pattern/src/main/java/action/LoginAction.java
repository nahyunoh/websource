package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginAction implements Action {

	private String path;
	
	public LoginAction(String path) {
		super();
		this.path=path;
	}

	


	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println(request.getParameter("userid"));
		return new ActionForward(path, true);
	}

}
