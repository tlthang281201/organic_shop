@extends('front.layout.master')
@section('title','Sản phẩm')
@section('body')

<form action="">
<div class="organic_food_wrapper">
    <!--Header start-->
    <header class="header sticky-header">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="header_wrapper_inner">
                       
                        <div class="logo col-xs-12">
                            <a href="index.html">
                                <img src="assets/img/logo/logo.png" alt="">
                            </a>
                        </div>
                        
                        
                        <div class="main_menu_inner">
                          
                            <div class="menu">
                                <nav>
                                    <ul>
                                        <li>
                                            <a href="/">Trang chủ</a>
                                        </li>
                                        <li><a href="gioi-thieu">Giới thiệu </a></li>
                                        <li class="active"><a href="shop">Sản phẩm</a></li>
                                        <li><a href="blog">Blog </a></li>
                                        
                                        <li><a href="lien-he">Liên hệ</a></li>
                                     </ul>
                                </nav>
                            </div>
                            
                            <div class="mobile-menu d-lg-none">
                                <nav>
                                     <ul>
                                        <li >
                                            <a href="/"
                                              >Trang chủ</a>
                                          </li>
                                          <li><a href="gioi-thieu">Giới thiệu </a></li>
                                          <li class="active"><a href="shop">Sản phẩm</a></li>
                                          <li><a href="blog">Blog </a></li>
                                          
                                          <li><a href="lien-he">Liên hệ</a></li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                        <div class="header_right_info d-flex">
                            <div class="search_box">
                                <div class="search_inner" style="position: relative;">
                                    <input name="search" type="text" placeholder="Tìm kiếm" value="{{ request('search') }}" />
                                    <button type="submit" class="btn-search">
                                        <i class="ion-ios-search"></i>
                                    </button>
                                </div>
                            </div>
                            <div class="mini__cart">
                                <div class="mini_cart_inner">
                                    <div class="cart_icon">
                                        <a href="gio-hang">
                                            <span class="cart_icon_inner">
                                                <i class="ion-android-cart"></i>
                                                <span class="cart_count">{{ Session::get('cart') != null ? count(Session::get('cart')) : 0 }}</span>
                                            </span>
                                        </a>
                                    </div>
                                    <!--Mini Cart Box-->
                                    {{-- <div class="mini_cart_box cart_box_one">
                                        <div class="mini_cart_item">
                                            <div class="mini_cart_img">
                                                <a href="#">
                                                    <img src="assets/img/cart/1.jpg" alt="">
                                                    <span class="cart_count">1</span>
                                                </a>
                                            </div>
                                            <div class="cart_info">
                                                <h5><a href="product-details.html">Mushroom Burger</a></h5>
                                                <span class="cart_price">$75.99</span>
                                            </div>
                                            <div class="cart_remove">
                                                <a href="#"><i class="zmdi zmdi-delete"></i></a>
                                            </div>
                                        </div>
                                        <div class="mini_cart_item">
                                            <div class="mini_cart_img">
                                                <a href="#">
                                                    <img src="assets/img/cart/2.jpg" alt="">
                                                    <span class="cart_count">1</span>
                                                </a>
                                            </div>
                                            <div class="cart_info">
                                                <h5><a href="#">Country Burger</a></h5>
                                                <span class="cart_price">$48.99</span>
                                            </div>
                                            <div class="cart_remove">
                                                <a href="#"><i class="zmdi zmdi-delete"></i></a>
                                            </div>
                                        </div>
                                        
                                        <div class="price_content">
                                            <div class="cart_subtotals">
                                                <div class="price_inline">
                                                    <span class="label">Subtotal </span>
                                                    <span class="value">$143.49 </span>
                                                </div>
                                                <div class="price_inline">
                                                    <span class="label">Shipping </span>
                                                    <span class="value">$7.00</span>
                                                </div>
                                                <div class="price_inline">
                                                    <span class="label">Taxes </span>
                                                    <span class="value">$0.00</span>
                                                </div>
                                            </div>
                                            <div class="cart-total-price">
                                                <span class="label">Total </span>
                                                <span class="value">$85.99</span>
                                            </div>
                                        </div>
                                        <div class="min_cart_checkout">
                                            <a href="checkout.html">Checkout</a>
                                        </div>
                                    </div> --}}
                                    <!--Mini Cart Box End -->
                                </div>
                            </div>
                            <div class="header_account">
                                <div class="account_inner">
                                  <a style="cursor: pointer"><i class="ion-person"></i></a>
                                </div>
                                <div class="content-setting-dropdown">
                                  <div class="language-selector-wrapper">
                                    <div class="user_info_top">
                                      @if(Auth::check())
                                      <ul>
                                        <li style="border-bottom: 1px solid gray">{{ Auth::user()->name }}</li>
                                        <li class="mt-2"><a href="thong-tin-ca-nhan">Thông tin cá nhân</a></li>
                                        <li><a href="log-out" onclick="event.preventDefault();
                                          document.getElementById('logout-form').submit();">Đăng xuất</a></li>
                                        
                                      </ul>
                                      @else
                                      <ul>
                                        <li><a href="dang-nhap">Đăng nhập</a></li>
                                        <li><a href="dang-ky">Đăng ký</a></li>
                                      </ul>
                                      @endif
                                    </div>
                                  </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!--Header end-->
</div>  
<div class="breadcrumb_container">
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">     
                <nav>
            <ul>
                <li>
                    <a href="/">Trang chủ ></a>
                </li>
                @if(request()->segment(3) == null)
                <li>Sản phẩm</li>
                @else
                <li><a href="shop">Sản phẩm ></a></li>
                <li>{{ $categoryName }}</li>
                @endif
            </ul>
        </nav>
            </div>
        </div> 
    </div>        
</div>
 <div class="organic_food_wrapper">        
    <!--- shop_wrapper area  -->
    <div class="shop_wrapper ptb-30">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-3 col-md-8 col-12">
                    <div class="shop_sidebar">
                        <div class="block_categories">
                            <div class="category_top_menu widget">
                                <div class="widget_title">
                                    <h3>Danh mục</h3>
                                </div>
                                <ul class="shop_toggle">
                                    @foreach($categories as $category)
                                        @if($category->published == 1)
                                            @if(count($category->products)>0)
                                            <li><a href="shop/danh-muc/{{ $category->alias }}">{{ $category->name }}</a></li>
                                            @endif
                                        @endif
                                    @endforeach
                                </ul>   
                            </div>
                        </div>
                        <div class="search_filters_wrapper">
                            <div class="price_filter widget">
                                    <div class="widget_title">
                                        <h3>Lọc theo giá</h3>
                                    </div>
                                    <div class="search_filters widget">
                                        <input type="text" name="min_price" id="min_price" readonly />  
                                        <input type="text" name="max_price" id="max_price" readonly />
                                        <div id="slider-range" 
                                        data-min-value="{{ str_replace('₫','',request('min_price')) }}"
                                        data-max-value="{{ str_replace('₫','',request('max_price')) }}" ></div>
                                        <button class="button_filter" type="submit">Lọc</button>
                                    </div>
                                    
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-9 col-md-12 col-12">
                    <div class="tav_menu_wrapper">
                        <div class="row align-items-center">
                            <div class="col-lg-6 col-md-7 col-sm-6">
                                <div class="tab_menu shop_menu">
                                    <div class="tab_menu_inner">
                                        <ul class="nav" role="tablist">
                                            {{--  --}}
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-5 col-sm-6">
                                <div class="Relevance">
                                    <span>Sắp xếp:</span>
                                    <div class="dropdown dropdown-shop">
                                            <select name="sort_by" onchange="this.form.submit()" id="dropdown">
                                                <option {{ request('sort_by') == 'latest' ? 'selected' : '' }} value="latest">Mới nhất</option>   
                                                <option {{ request('sort_by') == 'name-ascending' ? 'selected' : '' }} value="name-ascending">Tên A-Z</option>
                                                <option {{ request('sort_by') == 'name-descending' ? 'selected' : '' }} value="name-descending">Tên Z-A</option>
                                                <option {{ request('sort_by') == 'price-ascending' ? 'selected' : '' }} value="price-ascending">Giá thấp đến cao</option>
                                                <option {{ request('sort_by') == 'price-descending' ? 'selected' : '' }} value="price-descending">Giá cao đến thấp</option>
                                            </select>
                                    </div>
                                </div>    
                            </div>    
                        </div>
                    </div> 
                    <div class="tab_product_wrapper">
                        <div class="tab-content">
                            <div class="tab-pane fade show active" id="shop_active" >
                                <div class="row">
                                    @if(count($products) > 0)
                                    @foreach($products as $product)
                                    <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6">
                                        <div class="single__product">
                                            <div class="single_product__inner">
                                                {{-- <span class="new_badge">new</span> --}}
                                                @if($product->discount != null)
                                                    <span class="discount_price">Khuyến mãi</span>
                                                @endif
                                                
                                                <div class="product_img">
                                                    <a href="shop/san-pham/{{ $product->alias }}">
                                                        <img src="front/img/{{ $product->productImage[0]->path }}" style="height: 223px">
                                                    </a>
                                                </div>
                                                <div class="product__content text-center">
                                                    <div class="produc_desc_info">
                                                        <div class="product_title">
                                                            <h4><a href="shop/san-pham/{{ $product->alias }}">{{ $product->product_name }}</a></h4>
                                                        </div>
                                                        <div class="product_price">
                                                            @if($product->discount != null)
                                                            <p>{{ number_format($product->discount, 0) }}<small>đ</small><strike style="margin-left: 10px;font-size: 14px;color: darkgray;font-weight: 500">{{ number_format($product->price, 0) }}đ</strike></p>
                                                            @else
                                                            <p>{{ number_format($product->price, 0) }}<small>đ</small></p>
                                                            @endif
                                                        </div>
                                                    </div>
                                                    <div class="product__hover">
                                                        <ul>
                                                            <li><a href="javascript:addCart({{ $product->id }},1)"><i class="ion-android-cart"></i></a></li>
                                                            {{-- <li><a class="cart-fore" href="#" data-toggle="modal" data-target="#my_modal"  title="Quick View" ><i class="ion-android-open"></i></a></li> --}}
                                                            <li><a href="shop/san-pham/{{ $product->alias }}"><i class="ion-clipboard"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>     
                                    @endforeach 
                                    @else
                                    <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6">
                                        <span style="text-align: center">
                                            Không tìm thấy sản phẩm
                                        </span>
                                    </div>
                                    @endif
                                </div>
                            </div>
                            {{-- <div class="tab-pane fade" id="featured_active" role="tabpanel">
                                <div class="tab_product_bottom_wrapper">    
                                    <div class="row">
                                       <div class="col-lg-4 col-md-5 col-sm-5">
                                            <div class="single_product__inner inner_shop">
                                                <span class="new_badge">new</span>
                                                <span class="discount_price">-5%</span>
                                                <div class="product_img">
                                                    <a href="#">
                                                        <img src="assets/img/product/207.jpg" alt="">
                                                    </a>
                                                </div>

                                            </div> 
                                        </div> 
                                        <div class="col-lg-8 col-md-7 col-sm-7">
                                            <div class="product__content text-left">
                                                <div class="produc_desc_info">
                                                    <div class="product_title title_shop">
                                                        <h4><a href="product-details.html">Cheese Butter Burger</a></h4>
                                                    </div>
                                                    <div class="product_price price_shop">
                                                       <p class="regular_price">$65.51</p>
                                                        <p>$75.66</p>
                                                    </div>
                                                    <div class="product_content_shop">
                                                        <p>Faded short sleeves t-shirt with high neckline. Soft and stretchy material for a comfortable fit. Accessorize with a straw hat and you're ready for summer!</p>
                                                    </div>
                                                </div>
                                                <div class="product__hover hover_shop">
                                                   <div class="product_addto_cart">
                                                        <button type="submit">ADD TO CART</button> 
                                                   </div>
                                                   <div class="product_cart_icone">
                                                        <ul>
                                                            <li><a href="#"><i class="ion-android-cart"></i></a></li>
                                                            <li><a class="cart-fore" href="#" data-toggle="modal" data-target="#my_modal"  title="Quick View" ><i class="ion-android-open"></i></a></li>

                                                            <li><a href="product-details.html"><i class="ion-clipboard"></i></a></li>
                                                        </ul>
                                                    </div>    
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
     
                            </div> --}}
                        </div>  
                       
                    </div>
                    <div class="float-right">
                        {{ $products->links('pagination::bootstrap-4') }}
                    </div>
                </div> 
            </div>
        </div>
    </div>   
    <!--- shop_wrapper area end  -->
    
     <!-- footer start -->
    <footer class="footer pt-90">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-3 col-md-12 col-xs-12">
                    <!--Single Footer-->
                    <div class="single_footer widget">
                        <div class="single_footer_widget_inner">
                            <div class="footer_logo">
                                <a href="#"><img src="assets/img/logo/logo_footer.png" alt=""></a>
                            </div>
                            <div class="footer_content">
                                <p>Địa chỉ: Đường Nam Kỳ Khởi Nghĩa, TP Đà Nẵng</p>
                                <p>Điện thoại: 0123 456 789</p>
                                <p>Email: thang281201@gmail.com</p>
                            </div>
                            <div class="footer_social">
                                <h4>Theo dõi ngay:</h4>
                                <div class="footer_social_icon">
                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                    <a href="#"><i class="fa fa-google-plus"></i></a>
                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                    <a href="#"><i class="fa fa-youtube"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--Single Footer-->
                </div>
                <div class="col-lg-6 col-md-12 col-xs-12">
                    <div class="footer_menu_list d-flex justify-content-between">
                        <!--Single Footer-->
                        <div class="single_footer widget">
                            <div class="single_footer_widget_inner">   
                                <div class="footer_title">
                                    <h2>Sản phẩm</h2>
                                </div>
                                <div class="footer_menu">
                                    <ul>
                                        <li><a href="#"> Rau củ quả</a></li>
                                        <li><a href="#"> Trái cây</a></li>
                                        <li><a href="#"> Hải sản</a></li>
                                        <li><a href="#"> Thịt gà</a></li>
                                        <li><a href="#"> Thịt bò</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!--Single footer end-->   
                        <!--Single footer start-->   
                        <div class="single_footer widget">
                            <div class="single_footer_widget_inner">   
                                <div class="footer_title">
                                    <h2>Chuyên mục</h2>
                                </div>
                                <div class="footer_menu">
                                    <ul>
                                        <li><a href="#"> Cẩm nang sức khoẻ</a></li>
                                        <li><a href="#"> An toàn thực phẩm</a></li>
                                        <li><a href="#"> Kiến thức</a></li>
                                        <li><a href="#"> Món ngon mỗi ngày</a></li>
                                        <li><a href="#"> Góc khuyến nông</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!--Single Footer end-->
                        <!--Single footer start-->   
                        <div class="single_footer widget">
                            <div class="single_footer_widget_inner">   
                                <div class="footer_title">
                                    <h2>Chăm sóc khách hàng</h2>
                                </div>
                                <div class="footer_menu">
                                    <ul>
                                        <li><a href="#"> Chính sách đổi trả</a></li>
                                        <li><a href="#"> Chính sách giao hàng</a></li>
                                        <li><a href="#"> Chính sách thanh toán</a></li>
                                        <li><a href="#"> Điều khoản sử dụng</a></li>
                                        <li><a href="#"> Quy định đơn đặt hàng</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!--Single Footer end-->
                    </div>
                </div>
                <div class="col-lg-3 col-md-12 col-xs-12">
                    <div class="footer_title">
                        <h2>Đăng kí nhận tin khuyến mãi</h2>
                    </div>
                    <div class="footer_news_letter">

                    </div>
                    
                </div>
            </div>
        </div>
        
        <div class="copyright">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-xs-12">
                        <div class="copyright_text">
                            <p>Copyright 2018 <a href="#">Organicfood</a>. All Rights Reserved</p>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-xs-12">
                        <div class="footer_mastercard text-right">
                            <a href="#"><img src="assets/img/brand/payment.png" alt=""></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
    </footer>
    
    <!-- footer end -->

</div>
</form>
<!--organicfood wrapper end--> 

 <!-- modal area start --> 
<div class="modal fade" id="my_modal" tabindex="-1" role="dialog"  aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
            <div class="modal-body shop">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-5 col-md-5 col-sm-12">
                            <div class="product-flags madal">  
                                <div class="tab-content" id="pills-tabContent">
                                    <div class="tab-pane fade show active" id="imgeone" role="tabpanel" >
                                        <div class="product_tab_img">
                                            <a href="#"><img src="assets/img/cart/nav12.jpg" alt=""></a>    
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="imgetwo" role="tabpanel">
                                        <div class="product_tab_img">
                                            <a href="#"><img src="assets/img/cart/nav11.jpg" alt=""></a>    
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="imgethree" role="tabpanel">
                                        <div class="product_tab_img">
                                            <a href="#"><img src="assets/img/cart/nav13.jpg" alt=""></a>    
                                        </div>
                                    </div>
                                </div>
                                <div class="products_tab_button  modals">    
                                    <ul class="nav product_navactive" role="tablist">
                                        <li >
                                            <a class="nav-link active" data-toggle="tab" href="#imgeone" role="tab" aria-controls="imgeone" aria-selected="false"><img src="assets/img/cart/nav.jpg" alt=""></a>
                                        </li>
                                        <li>
                                             <a class="nav-link" data-toggle="tab" href="#imgetwo" role="tab" aria-controls="imgetwo" aria-selected="false"><img src="assets/img/cart/nav1.jpg" alt=""></a>
                                        </li>
                                        <li>
                                           <a class="nav-link button_three" data-toggle="tab" href="#imgethree" role="tab" aria-controls="imgethree" aria-selected="false"><img src="assets/img/cart/nav2.jpg" alt=""></a>
                                        </li>
                                    </ul>
                                </div>    
                            </div>  
                        </div> 
                        <div class="col-lg-7 col-md-7 col-sm-12">
                            <div class="modal_right">
                                <div class="shop_reviews">
                                    <div class="demo_product">
                                        <h2>Sprite Yoga Straps1</h2> 
                                    </div>
                                    <div class="current_price">
                                        <span class="regular">$64.99</span>    
                                        <span class="regular_price" >$78.99</span>    
                                    </div>
                                    <div class="product_information product_modal">
                                        <div id="product_modal_content">
                                            <p>Short-sleeved blouse with feminine draped sleeve detail.</p>    
                                        </div>
                                        <div class="product_variants">
                                            <div class="product_variants_item modal_item">
                                                <span class="control_label">Size</span>
                                                <select id="group_1">
                                                    <option value="1">S</option>
                                                    <option value="2" selected="selected">M</option>
                                                    <option value="3">L</option>
                                                </select>    
                                            </div>   
                                            
                                           <div class="quickview_plus_minus">
                                                <span class="control_label">Quantity</span>
                                                <div class="quickview_plus_minus_inner">
                                                    <div class="cart-plus-minus">
                                                        <input type="text" value="02" name="qtybutton" class="cart-plus-minus-box">
                                                    </div>
                                                   <div class="add_button add_modal">
                                                        <button type="submit"> Add to cart</button> 
                                                    </div>
                                                </div>    
                                            </div> 
                                            
                                            <div class="cart_description">
                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</p>    
                                            </div> 
                                        </div>
                                    </div>   
                                </div>    
                            </div>    
                        </div>    
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="social-share">
                                <h3>Share this product</h3>
                                <ul>
                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                                    <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                </ul>    
                            </div>    
                        </div>    
                    </div>     
                </div>
            </div>    
        </div>
    </div>
</div> 
<form id="logout-form" action="log-out" method="POST" class="d-none">
    @csrf
</form>
<script src="assets/js/vendor/jquery-1.12.0.min.js"></script>
@endsection