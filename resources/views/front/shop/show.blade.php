@extends('front.layout.master')
@section('title','Sản phẩm')
@section('body')
   <!--organicfood wrapper start-->
  <div class="organic_food_wrapper">
    <!--Header start-->
    <header class="header sticky-header">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <div class="header_wrapper_inner">
              <div class="logo col-xs-12">
                <a href="index.html">
                  <img src="assets/img/logo/logo.png" alt="" />
                </a>
              </div>

              <div class="main_menu_inner">
                <div class="menu">
                  <nav>
                    <ul>
                      <li>
                        <a href="/">
                            Home
                        </a>
                      </li>
                      <li><a href="about.html">about us </a></li>
                      <li class="active"><a href="shop.html">shop</a></li>
                      <li><a href="blog.html">Blog </a></li>
                      <li class="mega_parent">
                        <a href="#">Pages <i class="fa fa-angle-down"></i></a>
                        <ul class="mega_menu">
                          <li class="mega_item">
                            <a class="mega_title" href="#">Column 1</a>
                            <ul>
                              <li><a href="shop.html">Shop page</a></li>
                              <li>
                                <a href="shop-right-sidebar.html"
                                  >Shop Right sidebar</a
                                >
                              </li>
                              <li>
                                <a href="shop.html">shop Left Sidebar</a>
                              </li>
                              <li>
                                <a href="product-details.html"
                                  >product Details</a
                                >
                              </li>
                              <li>
                                <a href="my-account.html">My account</a>
                              </li>
                            </ul>
                          </li>
                          <li class="mega_item">
                            <a class="mega_title" href="#">Column 2</a>
                            <ul>
                              <li><a href="wishlist.html">Wishlist</a></li>
                              <li><a href="cart.html">Cart</a></li>
                              <li><a href="checkout.html">Checkout</a></li>
                              <li><a href="login.html">login</a></li>
                              <li><a href="register.html">Register</a></li>
                            </ul>
                          </li>
                          <li class="mega_item">
                            <a class="mega_title" href="#">Column 3</a>
                            <ul>
                              <li><a href="about.html">About us</a></li>
                              <li><a href="contact.html">Contact Us</a></li>
                              <li><a href="blog.html">blog Page</a></li>
                              <li>
                                <a href="blog-details.html">blog Details</a>
                              </li>
                              <li><a href="404.html">Error pages</a></li>
                            </ul>
                          </li>
                        </ul>
                      </li>
                      <li><a href="#">vegetable</a></li>
                    </ul>
                  </nav>
                </div>

                <div class="mobile-menu d-lg-none">
                  <nav>
                    <ul>
                      <li class="active">
                        <a href="index.html">Home</a>
                        <ul>
                          <li><a href="index.html">Home Version 1</a></li>
                          <li><a href="index-2.html">Home Version 2</a></li>
                          <li><a href="index-3.html">Home Version 3</a></li>
                          <li><a href="index-4.html">Home Version 4</a></li>
                        </ul>
                      </li>
                      <li><a href="about.html">about us </a></li>
                      <li><a href="shop.html">shop</a></li>
                      <li><a href="blog.html">Blog </a></li>
                      <li>
                        <a href="#">Pages</a>
                        <ul>
                          <li>
                            <a href="#">Column 1</a>
                            <ul>
                              <li><a href="shop.html">Shop page</a></li>
                              <li>
                                <a href="shop-right-sidebar.html"
                                  >Shop Right sidebar</a
                                >
                              </li>
                              <li>
                                <a href="shop.html">shop Left Sidebar</a>
                              </li>
                              <li>
                                <a href="product-details.html"
                                  >product Details</a
                                >
                              </li>
                              <li>
                                <a href="my-account.html">My account</a>
                              </li>
                            </ul>
                          </li>
                          <li>
                            <a href="#">Column 2</a>
                            <ul>
                              <li><a href="wishlist.html">Wishlist</a></li>
                              <li><a href="cart.html">Cart</a></li>
                              <li><a href="checkout.html">Checkout</a></li>
                              <li><a href="login.html">login</a></li>
                              <li><a href="register.html">Register</a></li>
                            </ul>
                          </li>
                          <li>
                            <a href="#">Column 3</a>
                            <ul>
                              <li><a href="about.html">About us</a></li>
                              <li><a href="contact.html">Contact Us</a></li>
                              <li><a href="blog.html">blog Page</a></li>
                              <li>
                                <a href="blog-details.html">blog Details</a>
                              </li>
                              <li><a href="404.html">Error pages</a></li>
                            </ul>
                          </li>
                        </ul>
                      </li>
                      <li><a href="#">vegetable</a></li>
                    </ul>
                  </nav>
                </div>
              </div>
              <div class="header_right_info d-flex">
                <div class="search_box">
                  <div class="search_inner">
                    <form action="#">
                      <input type="text" placeholder="Search our catalog" />
                      <button type="submit">
                        <i class="ion-ios-search"></i>
                      </button>
                    </form>
                  </div>
                </div>
                <div class="mini__cart">
                  <div class="mini_cart_inner">
                    <div class="cart_icon">
                      <a href="#">
                        <span class="cart_icon_inner">
                          <i class="ion-android-cart"></i>
                          <span class="cart_count">2</span>
                        </span>
                        <span class="item_total">$65.00</span>
                      </a>
                    </div>
                    <!--Mini Cart Box-->
                    <div class="mini_cart_box cart_box_one">
                      <div class="mini_cart_item">
                        <div class="mini_cart_img">
                          <a href="#">
                            <img src="assets/img/cart/1.jpg" alt="" />
                            <span class="cart_count">1</span>
                          </a>
                        </div>
                        <div class="cart_info">
                          <h5>
                            <a href="product-details.html">Mushroom Burger</a>
                          </h5>
                          <span class="cart_price">$75.99</span>
                        </div>
                        <div class="cart_remove">
                          <a href="#"><i class="zmdi zmdi-delete"></i></a>
                        </div>
                      </div>
                      <div class="mini_cart_item">
                        <div class="mini_cart_img">
                          <a href="#">
                            <img src="assets/img/cart/2.jpg" alt="" />
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
                    </div>
                    <!--Mini Cart Box End -->
                  </div>
                </div>
                <div class="header_account">
                  <div class="account_inner">
                    <a href="#"><i class="ion-gear-b"></i></a>
                  </div>
                  <div class="content-setting-dropdown">
                    <div class="language-selector-wrapper">
                      <div class="language-selector">
                        <ul>
                          <li>
                            <a href="#"
                              ><img
                                src="assets/img/1.jpg"
                                alt="English"
                              /><span class="expand-more">English</span></a
                            >
                          </li>

                          <li>
                            <a href="#"
                              ><img
                                src="assets/img/banner/frances2.jpg"
                                alt="Language"
                              /><span class="expand-more">Français</span>
                            </a>
                          </li>
                        </ul>
                      </div>
                      <div class="currency-selector-wrapper">
                        <ul>
                          <li><a href="#">EUR $</a></li>
                          <li><a href="#">USD $</a></li>
                        </ul>
                      </div>
                      <div class="user_info_top">
                        <ul>
                          <li><a href="my-account.html">my account</a></li>
                          <li><a href="checkout.html">Checkout</a></li>
                          <li><a href="login.html">Sign in</a></li>
                        </ul>
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
  <!--breadcrumb area start-->
  <div class="breadcrumb_container">
    <div class="container-fluid">
      <div class="row">
        <div class="col-12">
          <nav>
            <ul>
              <li>
                <a href="/">Sản phẩm ></a>
              </li>
              <li>{{ $product->product_name }}</li>
            </ul>
          </nav>
        </div>
      </div>
    </div>
  </div>
  <!--breadcrumb area end-->

  <!-- primary block area -->
  <div class="table_primary_block pt-100">
    <div class="container">
      <div class="row">
        <div class="col-lg-5 col-md-5 col-sm-12">
          <div class="product-flags">
            <div class="tab-content">
              @foreach($product->productImage as $index => $image)
                <div
                  class="tab-pane fade show {{$loop->first ? 'active' : ''}}"
                  id="{{$index}}"
                  role="tabpanel">
                  <div class="product_tab_img">
                    <a href="#"
                      ><img src="front/img/{{$image->path}}" width="458px"
                    /></a>
                  </div>
                </div>
              @endforeach
            </div>
            <div class="products_tab_button">
              <ul class="nav product_navactive" role="tablist">
                @foreach($product->productImage as $index => $image)
                <li class="product_button_one">
                  <a
                    class="nav-link {{$loop->first ? 'active' : ''}}"
                    data-toggle="tab"
                    href="#{{$index}}"
                    role="tab"
                    aria-controls="imgeone"
                    aria-selected="false"
                    ><img src="front/img/{{$image->path}}" width="100px"
                  /></a>
                </li>
                @endforeach

              </ul>
            </div>
          </div>
        </div>
        <div class="col-lg-7 col-md-7 col-sm-12">
          <div class="product__details_content">
            <div class="demo_product">
              <h2>{{$product->product_name}}</h2>
            </div>
            <div class="product_comments_block">
              <div class="comments_note clearfix">
                @for($i = 1; $i <= 5; $i++)
                  @if($i <= $product->avgRating)
                    <i class="fa fa-star" aria-hidden="true"></i>
                  @else
                    <i class="fa fa-star-o" aria-hidden="true"></i>
                  @endif
                @endfor
                <span>({{count($product->productComment)}})</span>
              </div>
              
            </div>
            <div class="current_price">
              @if($product->discount != null)
                <span style="font-size: 35px">{{ number_format($product->price, 0) }}<small>đ</small></span>
                <h6 style="text-decoration: line-through;color: darkgray">{{ number_format($product->discount, 0) }}<small>đ</small></h6>
              @else
                <span style="font-size: 35px">{{ number_format($product->price, 0) }}<small>đ</small></span>
              @endif
            </div>
            <div class="product_information">
              <div id="product_description_short">
                <p>
                  {!! $product->sdescription !!}
                </p>
              </div>
              <div class="product_variants">
                <div class="quickview_plus_minus">
                  <span class="control_label">Số lượng</span>
                  <div class="quickview_plus_minus_inner">
                    <div class="cart-plus-minus">
                      <input
                        type="text"
                        value="02"
                        name="qtybutton"
                        class="cart-plus-minus-box"
                      />
                    </div>
                    <div class="add_button">
                      <button type="submit">Thêm giỏ hàng</button>
                    </div>
                  </div>
                </div>
                <div class="product-availability">
                  <span id="availability">
                    <i class="zmdi zmdi-check"></i>
                    Còn hàng
                  </span>
                </div>
                <div class="social-sharing">

                </div>
                <div class="block-reassurance">
                  <ul>
                    <li>
                      <img src="assets/img/cart/cart1.png" alt="" />
                      <span
                        >Đảm bảo thực phẩm sạch</span
                      >
                    </li>
                    <li>
                      <img src="assets/img/cart/cart2.png" alt="" />
                      <span
                        >Giao hàng nhanh</span
                      >
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- primary block end -->

  <!-- product page tab -->

  <div class="product_page_tab ptb-100">
    <div class="container">
      <div class="row">
        <div class="col-12">
          <div class="product_tab_button">
            <ul class="nav nav-tabs" id="myTab" role="tablist">
              <li>
                <a
                  class="tav_past active"
                  id="home-tab"
                  data-toggle="tab"
                  href="#Description"
                  role="tab"
                  aria-controls="Description"
                  aria-selected="true"
                  >Mô tả sản phẩm</a
                >
              </li>
              <li>
                <a
                  class="tav_past"
                  id="contact-tab"
                  data-toggle="tab"
                  href="#Reviews"
                  role="tab"
                  aria-controls="Reviews"
                  aria-selected="false"
                  >Bình luận</a
                >
              </li>
            </ul>
          </div>
          <div class="tab-content" id="myTabContent">
            <div
              class="tab-pane fade show active"
              id="Description"
              role="tabpanel"
            >
              <div class="product-description">
                <p>
                  {{$product->description}}
                </p>
              </div>
            </div>

            <div class="tab-pane fade" id="Reviews" role="tabpanel">
              <div class="product_comments_block_tab">
                @foreach($product->productComment as $productComment)
                  <div class="comment_clearfix " style="display:flex;margin-bottom: 10px;">
                      <div style="float: left;">
                        <img src="front/img/avatar-default.jpg" width="100px"/>
                      </div>
                      <div style="float: right;">
                        <div class="comment_author">
                          <div class="star_content clearfix">
                            <ul>
                              @for($i = 1; $i <= 5; $i++)
                                @if($i <= $productComment->rating)
                                  <li><i class="fa fa-star"></i></li>
                                @else
                                  <li><i class="fa fa-star-o"></i></li>
                                @endif
                              @endfor
                            </ul>
                          </div>
                        </div>
                        <div class="comment_author_infos">
                          <strong style="font-size: 15px;">{{$productComment->name}} </strong>
                          <em style="margin-left: 10px">{{ date('d/m/Y', strtotime($productComment->create_date)) }}</em>
                        </div>
                        <div class="comment_details" >
                          <p>{{$productComment->comment}}</p>
                        </div>
                      </div>
                  </div>
                @endforeach
                {{-- <div class="review">
                  <h4><strong>ĐÁNH GIÁ</strong></h4>
                  <div class="container">
                    <div class="row">

                    </div>
                  </div>
                </div> --}}
                <h4 style="margin-bottom: 20px"><strong>BÌNH LUẬN</strong></h4>
                <form action="" method="post">
                  @csrf
                  <input type="hidden" name="product_id" value="{{$product->id}}" />
                  <input type="hidden" name="user_id" value="{{ Auth::user()->id ?? null }}" />
                  <div class="row">
                    <div class="col-lg-12">
                      <div class="personal-rating">
                        <h6>Đánh giá</h6>
                        <div class="rate">
                            <input type="radio" id="star5" name="rating" value="5" />
                            <label for="star5" title="text">5 stars</label>
                            <input type="radio" id="star4" name="rating" value="4" />
                            <label for="star4" title="text">4 stars</label>
                            <input type="radio" id="star3" name="rating" value="3" />
                            <label for="star3" title="text">3 stars</label>
                            <input type="radio" id="star2" name="rating" value="2" />
                            <label for="star2" title="text">2 stars</label>
                            <input type="radio" id="star1" name="rating" value="1" />
                            <label for="star1" title="text">1 star</label>
                        </div>
                      </div>
                    </div>
                    <div class="col-lg-6">
                      <div class="blog_leave_form mb-20">
                        <input placeholder="Tên *" type="text" name="name">    
                      </div>
                    </div>
                    <div class="col-lg-6">
                      <div class="blog_leave_form mb-20">
                        <input placeholder="Email *" type="Email" name="email">    
                      </div>
                       
                    </div>
                    <div class="col-12">
                      <div class="label_textarea">
                        <textarea placeholder="Nội dung*" name="comment"></textarea>    
                      </div>  
                      <div class="blog_leave_btn">
                        <button type="submit">Đăng</button>
                      </div>    
                    </div>     
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- product page tab end -->

  <!--Features product area-->
  <div class="features_product">
    <div class="container">
      <div class="row">
        <div class="col-12">
          <div class="section_title text-left">
            <h3>Sản phẩm liên quan</h3>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="related_product_active owl-carousel">
          @foreach ($relatedProduct as $item)
          <div class="col-lg-2">
            <div class="single__product">
              <div class="single_product__inner">
                <span class="new_badge">new</span>
                <div class="product_img">
                  <a href="shop/san-pham/{{$item->id}}">
                    <img src="front/img/{{$item->productImage[0]->path}}" alt="" />
                  </a>
                </div>
                <div class="product__content text-center">
                  <div class="produc_desc_info">
                    <div class="product_title">
                      <h4>
                        <a href="shop/san-pham/{{ $item->id }}"
                          >{{$item->product_name}}</a
                        >
                      </h4>
                    </div>
                    <div class="product_price">
                      @if($item->discount != null)
                        <p>{{number_format($item->price, 0)}}<small>đ</small></p>
                        <h6 style="text-decoration: line-through;color: darkgray">{{number_format($item->discount, 0)}}<small>đ</small></h6>
                      @else
                        <p>{{ number_format($item->price, 0) }}<small>đ</small></p>
                      @endif
                    </div>
                  </div>
                  <div class="product__hover">
                    <ul>
                      <li>
                        <a href="#"><i class="ion-android-cart"></i></a>
                      </li>
                      {{-- <li>
                        <a
                          class="cart-fore"
                          href="#"
                          data-toggle="modal"
                          data-target="#my_modal"
                          title="Quick View"
                          ><i class="ion-android-open"></i
                        ></a>
                      </li> --}}
                      <li>
                        <a href="shop/san-pham/{{$item->id}}"
                          ><i class="ion-clipboard"></i
                        ></a>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
          @endforeach
        </div>
      </div>
    </div>
  </div>
  <!--Features product end-->

  <div class="organic_food_wrapper">


    <!-- footer start -->
    <footer class="footer pt-90 my-account">
      <div class="container-fluid">
        <div class="row">
          <div class="col-lg-3 col-md-12 col-xs-12">
            <!--Single Footer-->
            <div class="single_footer widget">
              <div class="single_footer_widget_inner">
                <div class="footer_logo">
                  <a href="#"
                    ><img src="assets/img/logo/logo_footer.png" alt=""
                  /></a>
                </div>
                <div class="footer_content">
                  <p>Address: 123 Main Street, Anytown, CA 12345 - USA.</p>
                  <p>Phone: +(000) 800 456 789</p>
                  <p>Email: Contact@posthemes.com</p>
                </div>
                <div class="footer_social">
                  <h4>Get in Touch:</h4>
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
                    <h2>Products</h2>
                  </div>
                  <div class="footer_menu">
                    <ul>
                      <li><a href="#">Prices drop</a></li>
                      <li><a href="#"> New products</a></li>
                      <li><a href="#"> Best sales</a></li>
                      <li><a href="#"> Contact us</a></li>
                      <li><a href="#"> My account</a></li>
                    </ul>
                  </div>
                </div>
              </div>
              <!--Single footer end-->
              <!--Single footer start-->
              <div class="single_footer widget">
                <div class="single_footer_widget_inner">
                  <div class="footer_title">
                    <h2>Login</h2>
                  </div>
                  <div class="footer_menu">
                    <ul>
                      <li><a href="#">Sitemap</a></li>
                      <li><a href="#"> Stores</a></li>
                      <li><a href="#"> Login</a></li>
                      <li><a href="#"> Contact us</a></li>
                      <li><a href="#"> My account</a></li>
                    </ul>
                  </div>
                </div>
              </div>
              <!--Single Footer end-->
              <!--Single footer start-->
              <div class="single_footer widget">
                <div class="single_footer_widget_inner">
                  <div class="footer_title">
                    <h2>Your account</h2>
                  </div>
                  <div class="footer_menu">
                    <ul>
                      <li><a href="#">Personal info</a></li>
                      <li><a href="#"> Orders</a></li>
                      <li><a href="#"> Login</a></li>
                      <li><a href="#"> Credit slips</a></li>
                      <li><a href="#"> Addresses</a></li>
                    </ul>
                  </div>
                </div>
              </div>
              <!--Single Footer end-->
            </div>
          </div>
          <div class="col-lg-3 col-md-12 col-xs-12">
            <div class="footer_title">
              <h2>Join Our Newsletter Now</h2>
            </div>
            <div class="footer_news_letter">
              <p>
                Get E-mail updates about our latest shop and special offers.
              </p>
              <div class="newsletter_form">
                <form action="#">
                  <input
                    type="email"
                    required
                    placeholder="Your Email Address"
                  />
                  <input type="submit" value="Subscribe" />
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
                <p>
                  Copyright 2018 <a href="#">Organicfood</a>. All Rights
                  Reserved
                </p>
              </div>
            </div>
            <div class="col-lg-6 col-md-6 col-xs-12">
              <div class="footer_mastercard text-right">
                <a href="#"
                  ><img src="assets/img/brand/payment.png" alt=""
                /></a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </footer>
  </div>

  <!-- footer end -->

  <!--organicfood wrapper end-->

  <!-- modal area start -->
  <div
    class="modal fade"
    id="my_modal"
    tabindex="-1"
    role="dialog"
    aria-hidden="true"
  >
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content">
        <button
          type="button"
          class="close"
          data-dismiss="modal"
          aria-label="Close"
        >
          <span aria-hidden="true">&times;</span>
        </button>
        <div class="modal-body shop">
          <div class="container">
            <div class="row">
              <div class="col-lg-5 col-md-5 col-sm-12">
                <div class="product-flags madal">
                  <div class="tab-content" id="pills-tabContent">
                    <div
                      class="tab-pane fade show active"
                      id="imgeone"
                      role="tabpanel"
                    >
                      <div class="product_tab_img">
                        <a href="#"
                          ><img src="assets/img/cart/nav12.jpg" alt=""
                        /></a>
                      </div>
                    </div>
                    <div class="tab-pane fade" id="imgetwo" role="tabpanel">
                      <div class="product_tab_img">
                        <a href="#"
                          ><img src="assets/img/cart/nav11.jpg" alt=""
                        /></a>
                      </div>
                    </div>
                    <div class="tab-pane fade" id="imgethree" role="tabpanel">
                      <div class="product_tab_img">
                        <a href="#"
                          ><img src="assets/img/cart/nav13.jpg" alt=""
                        /></a>
                      </div>
                    </div>
                  </div>
                  <div class="products_tab_button modals">
                    <ul class="nav product_navactive" role="tablist">
                      <li>
                        <a
                          class="nav-link active"
                          data-toggle="tab"
                          href="#imgeone"
                          role="tab"
                          aria-controls="imgeone"
                          aria-selected="false"
                          ><img src="assets/img/cart/nav.jpg" alt=""
                        /></a>
                      </li>
                      <li>
                        <a
                          class="nav-link"
                          data-toggle="tab"
                          href="#imgetwo"
                          role="tab"
                          aria-controls="imgetwo"
                          aria-selected="false"
                          ><img src="assets/img/cart/nav1.jpg" alt=""
                        /></a>
                      </li>
                      <li>
                        <a
                          class="nav-link button_three"
                          data-toggle="tab"
                          href="#imgethree"
                          role="tab"
                          aria-controls="imgethree"
                          aria-selected="false"
                          ><img src="assets/img/cart/nav2.jpg" alt=""
                        /></a>
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
                      <span class="regular_price">$78.99</span>
                    </div>
                    <div class="product_information product_modal">
                      <div id="product_modal_content">
                        <p>
                          Short-sleeved blouse with feminine draped sleeve
                          detail.
                        </p>
                      </div>
                      <div class="product_variants">
                        <div class="product_variants_item modal_item">
                          <span class="control_label">Size</span>
                          <select id="group_2">
                            <option value="1">S</option>
                            <option value="2" selected="selected">M</option>
                            <option value="3">L</option>
                          </select>
                        </div>

                        <div class="quickview_plus_minus">
                          <span class="control_label">Quantity</span>
                          <div class="quickview_plus_minus_inner">
                            <div class="cart-plus-minus">
                              <input
                                type="text"
                                value="02"
                                name="qtybutton"
                                class="cart-plus-minus-box"
                              />
                            </div>
                            <div class="add_button add_modal">
                              <button type="submit">Add to cart</button>
                            </div>
                          </div>
                        </div>

                        <div class="cart_description">
                          <p>
                            Lorem ipsum dolor sit amet, consectetur
                            adipisicing elit, sed do eiusmod tempor incididunt
                            ut labore et dolore magna aliqua. Ut enim ad minim
                            veniam,
                          </p>
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
                    <li>
                      <a href="#"><i class="fa fa-facebook"></i></a>
                    </li>
                    <li>
                      <a href="#"><i class="fa fa-twitter"></i></a>
                    </li>
                    <li>
                      <a href="#"><i class="fa fa-pinterest"></i></a>
                    </li>
                    <li>
                      <a href="#"><i class="fa fa-google-plus"></i></a>
                    </li>
                    <li>
                      <a href="#"><i class="fa fa-linkedin"></i></a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
@endsection
  <!-- modal area end -->