@extends('front.layout.master')
@section('title','Quản lý đơn hàng')
@section('body')
 <!--organicfood wrapper start--> 
  <div class="organic_food_wrapper blog_details">
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
                                            <a href="">Trang chủ</a>
                                        </li>
                                        <li><a href="gioi-thieu">Giới thiệu </a></li>
                                        <li ><a href="shop">Sản phẩm</a></li>
                                        <li ><a href="blog">Blog </a></li>
                                       
                                        <li><a href="lien-he">Liên hệ</a></li>
                                     </ul>
                                </nav>
                            </div>
                            
                            <div class="mobile-menu d-lg-none">
                                <nav>
                                    <ul>
                                        <li>
                                            <a href="">Trang chủ</a>
                                        </li>
                                        <li><a href="gioi-thieu">Giới thiệu </a></li>
                                        <li ><a href="shop">Sản phẩm</a></li>
                                        <li ><a href="blog">Blog </a></li>
                                       
                                        <li><a href="lien-he">Liên hệ</a></li>
                                     </ul>
                                </nav>
                            </div>
                        </div>
                        <div class="header_right_info d-flex">
                            <div class="search_box">
                                <div class="search_inner">
                                    <form action="shop">
                                        <input name="search" type="text" placeholder="Tìm kiếm">
                                        <button type="submit"><i class="ion-ios-search"></i></button>
                                    </form>
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
                                        <form id="logout-form" action="log-out" method="POST" class="d-none">
                                          @csrf
                                        </form>
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
 <!--organicfood wrapper end-->
 
<!--breadcrumb area start-->
<div class="breadcrumb_container">
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">     
                <nav>
            <ul>
                <li><a href="">Trang chủ</a> ></li>
                <li><a href="thong-tin-ca-nhan">Thông tin cá nhân</a> ></li>
                <li>Quản lý đơn hàng</li>
            </ul>
        </nav>
            </div>
        </div> 
    </div>        
</div>
 <!--breadcrumb area end-->

<!-- Start Maincontent  -->
<section class="main-content-area my-account ptb-50">
    <div class="container">
        <div class="account-dashboard">
            <div class="row">
                <div class="col-sm-12 col-md-3 col-lg-3">
                    <!-- Nav tabs -->
                    <ul role="tablist" class="nav flex-column dashboard-list">
                        <li ><a href="thong-tin-ca-nhan" class="nav-link">Thông tin cá nhân</a></li>
                        <li> <a href="thong-tin-ca-nhan/don-hang" class="nav-link active">Quản lý đơn hàng</a></li>
                        <li><a href="thong-tin-ca-nhan/doi-mat-khau" class="nav-link">Thay đổi mật khẩu</a></li>
                        <li><a href="log-out" onclick="event.preventDefault();
                            document.getElementById('logout-form').submit();" class="nav-link">Đăng xuất</a></li>
                    </ul>
                </div>
                <div class="col-sm-12 col-md-9 col-lg-9">
                    <!-- Tab panes -->
                    <div class="tab-content dashboard-content">
                        <div class="tab-pane show active" id="orders">
                            <h3>Đơn hàng</h3>
                            <div class="organic-table-area table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>Mã đơn hàng</th>
                                            <th>Ngày đặt</th>
                                            <th>Trạng thái</th>
                                            <th>Tổng tiền</th>
                                            <th>Hành động</th>	 	 	 	
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @if(count($orders) > 0) 
                                            @foreach($orders as $order)
                                                <tr>
                                                    <td>{{ $order->order_code }}</td>
                                                    <td>{{ date('d/m/Y', strtotime($order->order_date)) }}</td>
                                                    @if($order->status == 'Chờ xác nhận')
                                                    <td><span class="text-info">{{ $order->status }}</span></td>
                                                    @elseif($order->status == 'Đã xác nhận')
                                                    <td><span class="text-success">{{ $order->status }}</span></td>
                                                    @elseif($order->status == 'Đang giao hàng')
                                                    <td><span class="text-warning">{{ $order->status }}</span></td>
                                                    @else
                                                    <td><span class="text-success">{{ $order->status }}</span></td>
                                                    @endif
                                                    <td>{{ number_format($order->total) }}đ</td>
                                                    <td><a href="thong-tin-ca-nhan/don-hang/{{ $order->order_code }}" class="view">Chi tiết</a></td>
                                                </tr>
                                            @endforeach
                                        @else
                                        <tr>
                                            <td colspan="5">Bạn chưa có đơn hàng nào</td>
                                        </tr>
                                        @endif
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>       	
</section>			
<!-- End Maincontent  -->

<!--organicfood wrapper start--> 
<div class="footer_food_wrapper">         
    <!-- footer start -->
    <footer class="footer pt-90 my-account">
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
                        <h2> Đăng kí nhận tin khuyến mãi </h2>
                    </div>
                    <div class="footer_news_letter">
                        <p>Get E-mail updates about our latest shop and special offers.</p>
                        <div class="newsletter_form">
                            <form action="#">
                                <input type="email" required placeholder="Your Email Address">
                                <input type="submit" value="Subscribe">
                            </form>
                        </div>
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
<script src="assets/js/vendor/jquery-1.12.0.min.js"></script>
@endsection