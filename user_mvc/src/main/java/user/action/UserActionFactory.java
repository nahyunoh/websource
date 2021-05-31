package user.action;

public class UserActionFactory {

   
   private static UserActionFactory uaf;
   
   private UserActionFactory() {}
   
   public static UserActionFactory getInstance() {
      if(uaf==null) {
         uaf = new UserActionFactory();   
      }
      return uaf;
   }
   
   public Action action(String cmd) {
      Action action = null;
      
      if(cmd.equals("/list.do")) {
         //성공하면 가야할 경로
         action = new ListAction("selectall.jsp");
      }else if(cmd.equals("/view.do")) {
         action = new ViewAction("selectone.jsp");
      }else if(cmd.equals("/remove.do")) {
         action = new RemoveAction("/list.do");
      }else if(cmd.equals("/modify.do")) {
         action = new ModifyAction("modify.jsp");
      }else if(cmd.equals("/update.do")) {
          action = new UpdateAction("/view.do"); //view.do?=no=7
       }
      return action;
   }
}