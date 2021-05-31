package book.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import book.service.BookModifyService;
import lombok.AllArgsConstructor;
@AllArgsConstructor
public class BookModifyAction implements Action {
	private String path; //true=>list.do
	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//값 가져오기
		int code=Integer.parseInt(request.getParameter("code"));
		int price=Integer.parseInt(request.getParameter("price"));
		
		BookModifyService service=new BookModifyService();
		boolean modifyFlag=service.modify(code, price);
		
		if(!modifyFlag) {
			path="index.jsp";
		}
		
		
		//가져갈게 없으면 액션포워드에서 패쓰잡고 트루
		return new ActionForward(path,true);
	}

}
