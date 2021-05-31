package member.action;

public class MemberActionFactory {
   
   //singleton패턴 =>객체는 하나만 생성
   private static MemberActionFactory maf;
   //1번 default 생성자는 private로 생성
   
   private MemberActionFactory() {};
 //2. 객체 생성을 한번만 하는 메소드 제공
   public static MemberActionFactory getInstance() {
      
      if(maf == null) {   
         maf = new MemberActionFactory();
      }
      
      return maf;
      
   }
   public Action action(String cmd) {
      Action action = null;
      
      if(cmd.equals("/login.do")) {
         action = new MemberLoginAction("view/loginForm.jsp");
      }else if(cmd.equals("/logout.do")){
         action = new MemberLogoutAction("index.jsp");
      }else if(cmd.equals("/modify.do")){
          action = new MemberModifyAction("view/loginForm.jsp");
       }else if(cmd.equals("/leave.do")){
           action = new MemberLeaveAction("view/loginForm.jsp");
        }else if(cmd.equals("/join.do")){
            action = new MemberJoinAction("view/loginForm.jsp");
         }
      return action;
   }

}