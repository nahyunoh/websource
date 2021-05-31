/**
 * 
 */
/**
 * 
 */
$(function(){
	$("#joinform").validate({
		rules:{
			userid:{
				required:true,
				validId:true
			},
			password:{
				required:true,
				validPwd:true
			},
			confirm_password:{
				required:true,
				validPwd:true,
				equalTo:"#password"
			},
			name:{
				required:true,
				validName:true
			},
			gender:"required",
			email:{
				required:true,
				email:true
			}
			
		},
		messages:{
			userid:{
				required:"아이디는 필수 요소입니다.",
			},
			password:{
				required:"비밀번호는 필수 요소입니다.",
			},
			confirm_password:{
				required:"비밀번호는 필수 요소입니다.",
				equalTo:"이전 비밀번호와 다릅니다."
			},
			name:{
				required:"이름은 필수 요소입니다."
			},
			gender:"성별은 필수 요소입니다.",
			email:{
				required:"이메일은 필수 요소입니다."
			}
			
		},
		errorPlacement:function(error,element){
			$(element).closest("form")
					.find("small[id='"+element.attr('id')+"']")
					.append(error);
		}
	})
})

//사용자만의 규칙 정의
$.validator.addMethod("validId",function(value){
		const regId =/^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,12}$/;
        return regId.test(value);
    },"아이디는 영문자, 숫자의 조합으로 6~12자리로 만들어야 합니다."); 

$.validator.addMethod("validPwd",function(value){
        const regPwd =/^(?=.*[A-Za-z])(?=.*\d)(?=.*[!@#$%^*])[A-Za-z\d!@#$%^*]{8,16}$/;
        return regPwd.test(value);
    },"비밀번호 영문자, 숫자,특수조합의 조합으로 8~16자리로 만들어야 합니다."); 

$.validator.addMethod("validName",function(value){
        const regName =/^[가-힣]{2,4}$/;
        return regName.test(value);
    },"이름은 한글 2~4자리로 만들어야 합니다."); 

 $.validator.addMethod("email",function(value){
        const regEmail =/(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])/;
        return regEmail.test(value);
    },"이메일을 확인해 주세요."); 