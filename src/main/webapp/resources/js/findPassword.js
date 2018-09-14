function checkPhone() {
    var phone = document.getElementsByName("phone").value;
    if(phone == null || phone == ""){
        document.getElementById("remind_1").innerText ="请输入手机号";
        return false;
    }else{
        document.getElementById("remind_1").innerHTML =" ";
        return true;
    }
}

function onFocus_1(){
    document.getElementById("remind_1").innerHTML="";

}

function checkCode() {
    var securityCode = document.getElementsByName("securityCode").value;
    if(securityCode == null || securityCode == ""){
        document.getElementById("remind_2").innerText ="请输入验证码";
        return false;
    }else{
        document.getElementById("remind_2").innerHTML ="";
        return true;
    }
}

function onFocus_2(){
    document.getElementById("remind_2").innerHTML="";

}

function checkEmail() {
    var checkEmail = document.getElementsByName("checkEmail").value;
    if(checkEmail == null || checkEmail == ""){
        document.getElementById("remind_3").innerText ="请输入电子邮箱地址";
        return false;
    }else{
        document.getElementById("remind_3").innerHTML ="";
        return true;
    }
}

function onFocus_3(){
    document.getElementById("remind_3").innerHTML="";

}

function submitTest() {
    return checkPhone() && checkCode();
}

function submitTestEmail() {
    return checkEmail();
}