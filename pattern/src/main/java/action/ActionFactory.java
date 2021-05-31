package action;

public class ActionFactory {
	//singleton
		private static ActionFactory factory;
		
		private ActionFactory() {}
		//한번만 생성-리턴해서 사용하도록 만듦=singleton
		public  static ActionFactory getInstance() {
			if(factory==null) {
				factory=new ActionFactory();
			}
			return factory;
		}
		
	public Action action(String cmd) {
		
		
		Action action=null;
		
		if(cmd.equals("/insert.do")) {
			action=new InsertAction("index.jsp");
		}else if(cmd.equals("/delete.do")) {
			action=new DeleteAction("index.jsp"); //액션생성
		}else if(cmd.equals("/login.do")) {
			action=new LoginAction("index.jsp");
		}
		return action;
	}
}
