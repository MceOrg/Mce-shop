
var custprofile=document.getElementsByName("custprofile")[0];
var selectedimg=document.getElementsByClassName("pic")[0];
var obj=document.getElementById("imageSelect").getElementsByTagName("option");
window.onload=function () {
    custprofile.value=selectedimg.src.split("/")[selectedimg.src.split("/").length-1];
    for(var i=0;i<obj.length;i++){
        if(obj[i].value.indexOf(custprofile.value)!=-1){
            obj[i].selected=true;  //相等则选中
        }
        console.log("sb");
    }

}
function setImg(obj) {
    var imageSrc = document.getElementById("imageSelect").value;
    selectedimg.src = imageSrc;
    custprofile.value=selectedimg.src.split("/")[selectedimg.src.split("/").length-1];
}