<div class="cart_totals  text-right">
    <h2>Tổng tiền</h2>
    <div class="cart-subtotal">
        <span>Thành tiền</span>    
        <span id="subtotal">{{ number_format($total, 0) }}đ</span>    
    </div>
    <div class="order-total">
        <span><strong>Tổng cộng</strong> </span>          
        <span id="total"><strong>{{ number_format($total, 0) }}đ </strong> </span>
    </div>
    <div class="wc-proceed-to-checkout">
        <a href="#">Thanh toán đơn hàng</a>
    </div>
 </div>    
 {{ print_r(Session::get('coupon')); }}
