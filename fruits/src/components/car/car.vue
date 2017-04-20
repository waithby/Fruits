<template>
  <div>
    <div class="wrap pt120" id="divCart">
      <div class="cart_list" id="divCartProductList">
        <li class="cart_list_li"  ccode="1269591">
          <div class="product-item">
            <div class="product_thumb">
              <a>
                <img  src="http://img11.yiguoimg.com/e/items/2017/170313/9288705133945453_300.jpg"style="display: inline;">
              </a>
            </div>
            <div class="product_info">
              <div class="product_name">海南金如意蜜瓜2个1kg以上/个(GD)</div>
              <div class="product_price">￥49.00<span>(2个/份)</span></div>
              <div class="quantity">
                <a id="decrement" class="decrement" cid="8b2e97aa-4e96-4926-bb58-94c451a237e3" ccode="1269591" amount="1">-</a><input id="txtProductCount" class="itxt" value="1" cid="8b2e97aa-4e96-4926-bb58-94c451a237e3" ccode="1269591" amount="1" maxlimitcount="20"><a id="increment" class="increment" cid="8b2e97aa-4e96-4926-bb58-94c451a237e3" ccode="1269591" amount="1" maxlimitcount="20">+</a>
              </div>
            </div>
            <div class="del-btn" cid="8b2e97aa-4e96-4926-bb58-94c451a237e3">
             <a>删除</a>
           </div>
         </div>
       </li>
     </div>
     <div class="discount">
      <ul id="ulCartGiftList"></ul>
    </div>
    <div class="clear_cart"><a id="btnClearCart">清空购物车</a></div>
    <div class="payment_total">
      <div class="shp_cart_info">
        <span class="sale_off">优惠:<strong id="discountAmount">￥0.00</strong></span>
        <span class="shp_cart_total">总计:<strong id="totalPrice">￥49.00</strong></span>
      </div>
      <a class="btn_right" id="btnGoPay">去结算(<span id="giftTotalCount">1</span>)</a>
    </div>
  </div>
</div>
</template>

<style type="text/css">
  @import url(../../../css/dh_car.css)
</style>
