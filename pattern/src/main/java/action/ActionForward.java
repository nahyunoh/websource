package action;

public class ActionForward {
	//이동방식/경로
	
		private String path;
		private boolean redirect;//true(sendRedirect), false(forward)
		
		public ActionForward() {
			super();
			
		}
		public String getPath() {
			return path;
		}
		public void setPath(String path) {
			this.path = path;
		}
		public boolean isRedirect() {
			return redirect;
		}
		public void setRedirect(boolean redirect) {
			this.redirect = redirect;
		}
		public ActionForward(String path, boolean redirect) {
			super();
			this.path = path;
			this.redirect = redirect;
		}
		
		
}
