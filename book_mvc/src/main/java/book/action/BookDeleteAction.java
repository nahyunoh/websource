package book.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import book.service.BookDeleteService;
import lombok.AllArgsConstructor;
@AllArgsConstructor
public class BookDeleteAction implements Action {
	private String path;
	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int code=Integer.parseInt(request.getParameter("code"));
		
		BookDeleteService service=new BookDeleteService();
		boolean removeFlag=service.remove(code);
		
		if(!removeFlag) {
			path="index.jsp";
		}
		return new ActionForward(path,true);
	}

}
