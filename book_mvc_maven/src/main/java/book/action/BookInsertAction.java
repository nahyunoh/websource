package book.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import book.domain.BookVO;
import book.service.BookInsertService;
import lombok.AllArgsConstructor;
@AllArgsConstructor
public class BookInsertAction implements Action {
	private String path;
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//가져오기
		int code=Integer.parseInt(request.getParameter("code"));
		String title=request.getParameter("title");
		String writer=request.getParameter("writer");
		int price=Integer.parseInt(request.getParameter("price"));
		
		
		//서비스
		BookInsertService service=new BookInsertService();
		boolean insertFlag=service.bookInsert(new BookVO(code, title, writer, price));
		
		if(!insertFlag) {
			path="index.jsp";
		}
		
		//ActionForward
		return new ActionForward(path, true);
	}

}
