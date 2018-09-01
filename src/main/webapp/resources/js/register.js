var tel=document.getElementById("tel");
var validate=document.getElementById("validate");
var fpassword=document.getElementById("password");
var repassword=document.getElementById("repassword");
var accept=document.getElementById("accept_clause");
var getval=document.getElementById("getvalidate");
var tip2tel=document.getElementById("tip2tel");
var tip2pwd=document.getElementById("tip2pwd");


var reg2tel=/^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\d{8}$/;
var reg2pwd=/^[a-zA-Z]\w{5,19}$/;

	function showval(){
		
	if(reg2tel.test(tel.value)){
		getval.style.backgroundColor="#f10180";
		getval.style.color="white";
		getval.style.cursor="pointer";
		getval.href="validate.html";
		tip2tel.style.visibility="hidden";
		
	}else{
		getval.style.backgroundColor="#d0d0d0";
		getval.style.color="#999";
		getval.href="javascript:;";
		getval.style.cursor="not-allowed";
		tip2tel.style.visibility="visible";
	}
	fpassword.onmousedown=function(){
		if(reg2pwd.test(fpassword.value)){
			tip2pwd.style.visibility="hidden";
		}else{
			tip2pwd.style.visibility="visible";
		}
	}
	
}

