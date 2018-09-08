function selectAll(select) { /**** 全选 ****/
    var goodsArr = document.getElementsByName("goods");
    var selectAll = document.getElementsByName("selectAll");
    //全选按钮
    for(var i = 0; i<goodsArr.length;i++) {
        goodsArr[i].checked = select.checked;
    }

    for (var i=0;i<selectAll.length;i++){
        selectAll[i].checked=select.checked;
    }
    setGoodsNum();
}
/*********** 减一件商品 ***********/
function subtract(element){
    var div = element.parentNode;
    var priceDiv = div.previousSibling.previousSibling;
    //获取价格
    var price = parseFloat(priceDiv.childNodes[1].innerText);

    var goods = element.nextSibling.nextSibling;
    //获得商品个数
    var goodsNum = parseFloat(goods.value);

    //获取小计标签
    var totalPriceDiv = div.nextSibling.nextSibling;
    var totalPrice = price*goodsNum-price;

    if(goodsNum>0){
        goods.value = goodsNum-1;
        totalPriceDiv.childNodes[1].innerText = totalPrice.toFixed(2);
    }
    sumPrice();
}

/*********** 加一件商品 ***********/
function add(element) {
    var div = element.parentNode;
    var priceDiv = div.previousSibling.previousSibling;
    //获取到价格
    var price = parseFloat(priceDiv.childNodes[1].innerText);
    //获取商品个数
    var goods=element.previousSibling.previousSibling;
    var goodsNum = parseFloat(goods.value);

    //获取小计标签
    var totalPriceDiv = div.nextSibling.nextSibling;

    var totalPrice = price * goodsNum+price;

    goods.value = goodsNum+1;
    totalPriceDiv.childNodes[1].innerText=totalPrice.toFixed(2);

    sumPrice();
}
function sumPrice() {
    var goodsArr = document.getElementsByName("goods");
    var totalPriceArr=document.getElementsByName("subtotal");
    var totalPrice = document.getElementById("sum_price");
    var totalShoesPrice = document.getElementById("all-shoes-price");
    var benefitPrice = document.getElementById("benefit-price");
    var sum=0;
    for (var i=0;i<totalPriceArr.length;i++){
        if(goodsArr[i].checked){
            sum += parseFloat(totalPriceArr[i].innerText);
        }
        // alert(goodsArr[i].checked);
    }
    var benefit = parseFloat(benefitPrice.innerText);
    totalPrice.innerText=sum.toFixed(2).toString();
    totalShoesPrice.innerText = (sum+benefit).toString();
}

function setGoodsNum() {
    var goodsNum = document.getElementsByName("goods");
    var goodsAmount = document.getElementById("goodsAmount");
    var selectAll = document.getElementsByName("selectAll");
    var goods=0;
    for (var i = 0;i<goodsNum.length;i++){
        if(goodsNum[i].checked){
            goods++;
        }
        else {
            selectAll[0].checked=false;
            selectAll[1].checked=false;
        }
    }
    goodsAmount.innerText=goods.toString();

    sumPrice();
}
