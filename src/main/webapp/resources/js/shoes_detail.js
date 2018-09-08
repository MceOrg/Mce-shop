function sub(element) {
    var div = element.parentNode;
    var priceDiv = div.previousSibling.previousSibling;
    //获取到价格
    var price = parseFloat(priceDiv.innerText.trim().slice(1));
    var goods=element.nextSibling.nextSibling;
    //获取商品个数
    var goodsNum = parseFloat(goods.value);

    //获取小计标签
    var totalPriceDiv = div.nextSibling.nextSibling;

    var totalPrice = price * goodsNum-price;

    if(goodsNum>1){
        goods.value = goodsNum-1;
        totalPriceDiv.childNodes[1].innerText=totalPrice.toFixed(2);
    }

}

function add(element) {
    var div = element.parentNode;
    var priceDiv = div.previousSibling.previousSibling;
    //获取到价格
    var price = parseFloat(priceDiv.innerText.trim().slice(1));
    //获取商品个数
    var goods=element.previousSibling.previousSibling;
    var goodsNum = parseFloat(goods.value);

    //获取小计标签
    var totalPriceDiv = div.nextSibling.nextSibling;

    var totalPrice = price * goodsNum+price;

    goods.value = goodsNum+1;
    totalPriceDiv.childNodes[1].innerText=totalPrice.toFixed(2);
}
//图片的切换
function switchPhoto(img) {
    document.getElementById("photo").src=img.src;
    
}
