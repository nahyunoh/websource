package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DeleteAction implements Action {

	private String path;
	
	public DeleteAction(String path) {
		super();
		this.path=path;
	}

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println(request.getParameter("bno"));
		
		
		//서비스 작업
		
		
		//서비스 작업 결과에 따라 페이지 이동
		//forward (false-주소는 그대로) or sendRedirect(true-주소올김)
		return new ActionForward(path,true);
	}

}
