/**
 * 
 */
$(function(){
	//메뉴에서 Register, login 메뉴 삭제
	//$("#2, #3").remove();
	//$("#2, #3").detach();
	$("#2, #3").css("display","none");
	
	// ~님 반갑습니다 버튼 3개를 화면에 보여주기
	var tag = "<span class='navbar-text'>"+name+" 님 반갑습니다.</span>&nbsp;&nbsp;";
	tag += '<button type="button" class="btn btn-primary" id="modify">비밀번호 수정</button>&nbsp;&nbsp;';
	tag += '<button type="button" class="btn btn-success" id="logout">로그아웃</button>&nbsp;&nbsp;';
	tag += '<button type="button" class="btn btn-danger" id="leave">회원탈퇴</button>';
	
	$("#navbarCollapse").append(tag);
})
