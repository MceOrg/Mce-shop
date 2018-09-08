var account=document.getElementById("username");
var tip2u=document.getElementById("tip2u");
var reg2tel=/^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\d{8}$/;
var reg2email=/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;

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
                "line-height": "150px",
                "color": "white",
                "font-weight": "bold",
                "font-size":"46px",
                "-webkit-transition": "all 1.5s ease",
                "transition": "all 1.5s ease",
                "animation": "none"
            })
        }
        flag=!flag;
    },1000);
}
account.onblur=function(){
    if(reg2tel.test(this.value)||reg2email.test(this.value)){
        tip2u.style.display="none";
    }else {
        tip2u.style.display="inline-block";
    }
}

