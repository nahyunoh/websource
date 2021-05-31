package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.InsertService;

//사용자의 요청을 가져오는 작업
public class InsertAction implements Action {

	private String path;
	
	public InsertAction(String path) {
		super();
		this.path=path;
	}

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//사용자에게 받은 값
		String num1=request.getParameter("num1");
		
		//서비스작업 =>서비스에게 넘김
		InsertService service=new InsertService();
		boolean result=service.insertService(num1);
		
		//insert true=>index.jsp
		//		false=>insert.jsp
		if(!result) {
			path="insert.jsp";
		}
		
		return new ActionForward(path,false);
	}

}
