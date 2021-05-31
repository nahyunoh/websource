package book.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import book.domain.BookVO;
import book.service.BookListService;
import lombok.AllArgsConstructor;

@AllArgsConstructor
public class BookListAction implements Action {
   
   private String path;

   @Override
   public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

      //가져오기

      //서비스
      
      BookListService service = new BookListService();
      List<BookVO> list = service.list();
      
      request.setAttribute("list", list);
      
      //ActionForward
      return new ActionForward(path,false);
   }

}