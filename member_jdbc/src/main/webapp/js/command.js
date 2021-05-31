/**
 * 로그아웃버튼, 비밀번호수정, 회원탈퇴 버튼 동작
 */
$(function(){
	$("#logout").click(function(){
		  location.href ="logoutProcess.jsp";   
	})
	$("#modify").click(function(){
		location.href="modifyForm.jsp";
	})
	$("#leave").click(function(){
		location.href="leaveForm.jsp";
	})
})