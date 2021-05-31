package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//사용자의 요청을 가져오는 작업
public interface Action {
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception;
	
}
