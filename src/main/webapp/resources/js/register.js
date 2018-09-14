var tel=document.getElementById("tel");
var validate=document.getElementById("validate");
var fpassword=document.getElementById("password");
var repassword=document.getElementById("repassword");
var accept=document.getElementById("accept_clause");
var getval=document.getElementById("getvalidate");
var tip2tel1=document.getElementById("tip2tel1");
var tip2tel2=document.getElementById("tip2tel2");
var tip2tel3=document.getElementById("tip2tel3");
var tip2tel4=document.getElementById("tip2tel4");
var form=document.getElementById("registerform");
var timer=null;
var flag=true;

    window.onload=function () {
        timer=setInterval(function(){
            if(flag){
                $("#flash-font").css({
                    "color": "#fff",
                    "-webkit-animation": "Glow 1.5s ease infinite alternate",
                    "animation": "Glow 1.5s ease infinite alternate"
                })
            }else {
                $("#flash-font").css({
                    "font-family": "Liana",
                    "text-align": "center",
                    "color": "white",
                    "font-weight": "bold",
                    "font-size":"46px",
                    "-webkit-transition": "all 1.5s ease",
                    "transition": "all 1.5s ease",
                    "animation": "none"
                })
            }
            flag=!flag;
        },1200);
    }

var tip2pwd1=document.getElementById("tip2pwd1");
var tip2pwd2=document.getElementById("tip2pwd2");

var tip2repwd1=document.getElementById("tip2repwd1");
var tip2repwd2=document.getElementById("tip2repwd2");

var tip2accept=document.getElementById("tip2accept");


var formSubmit=document.getElementById("register_sub");

var reg2tel=/^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\d{8}$/;
var reg2pwd=/^[a-zA-Z]\w{5,19}$/;

	function showTelTips(){

		if(tel.value==""){
			tip2tel1.style.display="inline";
            tip2tel2.style.display="none";
            tip2tel3.style.display="none";
            tip2tel4.style.display="none";
            return false;
		}else {
			if(reg2tel.test(tel.value)){
				getval.style.backgroundColor="#000";
				getval.style.color="white";
				getval.style.cursor="pointer";
                tip2tel2.style.display="none";
                tip2tel1.style.display="none";
                isValTel();
                formSubmit.disabled=false;

                return true;
			}else {
                tip2tel2.style.display="inline";
                tip2tel1.style.display="none";
                tip2tel3.style.display="none";
                tip2tel4.style.display="none";
                return false;
			}
		}
	}

	function showPwdTips() {
        if(fpassword.value==""){
            tip2pwd1.style.display="inline";
            tip2pwd2.style.display="none";
            return false;
        }else {
            if(reg2pwd.test(fpassword.value)){
                tip2pwd1.style.display="none";
                tip2pwd2.style.display="none";
                formSubmit.disabled=false;
                return true;
            }else {
                tip2pwd2.style.display="inline";
                tip2pwd1.style.display="none";
                return false;
            }
        }
    }

    function valPwd() {
		if(repassword.value==fpassword.value){
			formSubmit.style.backgroundColor="#000";
            tip2repwd2.style.display="none";
            formSubmit.disabled=false;
            return true;
		}else {
			tip2repwd2.style.display="inline";
            formSubmit.style.backgroundColor="silver";
            return false;
		}
    }
    
    function acceptClause() {
        if (accept.checked==true) {
            formSubmit.disabled=false;
            tip2accept.style.display="none";
            return true;
        }else {
            tip2accept.style.display="inline";
            return false;
        }
    }

		
	function finalVal() {
		if(showTelTips()&&showPwdTips()&&valPwd()&&acceptClause()){
			formSubmit.disabled=false;
			form.action="/customer?type=4";
			form.submit();

		}else {
            formSubmit.disabled=true;
		}
	}
	
    function isValTel() {
        $.ajax({
            async:false,
            url:"/customer?type=0",
            type:"post",
            dataType:"text",
            data:{
                "tel":$("#tel").val()
            },
            complete:function(data){
                if(data.responseText=="true"){
                    tip2tel4.style.display="none";
                    tip2tel3.style.display="inline";
                }else{
                    tip2tel3.style.display="none";
                    tip2tel4.style.display="inline";
                }
            }
        })
    }










	


