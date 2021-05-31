package book.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import book.domain.BookVO;
import book.service.BookSearchService;
import lombok.AllArgsConstructor;
@AllArgsConstructor
public class BookSearchAction implements Action {
	private String path;
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//가져오기
		String criteria=request.getParameter("criteria");
		String keyword=request.getParameter("keyword");
		
		//service
		BookSearchService service=new BookSearchService();
		List<BookVO> list=service.search(criteria, keyword);
		
		request.setAttribute("searchList", list);
		
		
		return new ActionForward(path, false);
	}

}
