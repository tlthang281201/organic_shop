<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use App\Models\City;
use App\Models\Coupon;
use App\Models\District;
use App\Models\Order;
use App\Models\OrderDetail;
use App\Models\Product;
use App\Models\Ward;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class CheckOutController extends Controller
{
    public function countTotal() 
    {
        $carts = Session::get('cart');
        $total = 0;
        if($carts) {
            foreach($carts as $val)
            {
                $total += $val['product_total'];
            }
            return $total;
        }
        return 0;
    }

    public function index()
    {
        $coupon = Session::get('coupon');
        $carts = Session::get('cart');
        $total = $this->countTotal();

        $cities = City::get();
        return view('front.checkout.index',compact('coupon','carts','total','cities'));
    }

    public function loadDistrict(Request $request) 
    {
        $cityId = $request->city_id;
        $districts = District::where('city_id',$cityId)->get();
        $response = "";
        foreach($districts as $district) {
            $response .= '<option value="'.$district->id.'">'.$district->name.'</option>';
        }
        return $response;
    }

    public function loadWard(Request $request) 
    {
        $district_id = $request->district_id;
        $wards = Ward::where('district_id',$district_id)->get();
        $response = "";
        foreach($wards as $ward) {
            $response .= '<option value="'.$ward->id.'">'.$ward->name.'</option>';
        }
        return $response;
    }

    public function addOrder(Request $request)
    {
        $bytes = bin2hex(random_bytes(20));
        $order_code = substr($bytes,rand(0,26),10);
        $subtotal = $this->countTotal();
        $coupon = Session::get('coupon');
        $carts = Session::get('cart');
        $discount = 0;
        if($coupon){
            if($coupon['coupon_type'] == 1) {
                $discount = ($subtotal*$coupon['coupon_value'])/100;
                if($discount > $coupon['max_discount']) {
                    $discount = $coupon['max_discount'];
                } 
            } else {
                $discount = $coupon['coupon_value'];
            }
        }
        $now = date(now());

        $order = Order::create([
            'order_code' => $order_code,
            'user_id' => Auth::user()->id,
            'order_date' => $now,
            'ship_date' => null,
            'status' => 'Chưa giao hàng',
            'deleted' => 0,
            'payment_id' => $request->payment_id,
            'paid' => 0,
            'pay_date' => null,
            'note' => $request->note,
            'shipper_id' => null,
            'city' => $request->city,
            'district' => $request->district,
            'ward' => $request->ward,
            'address' => $request->address,
            'subtotal' => $subtotal,
            'discount' => $discount,
            'total' => $subtotal - $discount
        ]);

        foreach($carts as $cart) {
            $product = Product::where('id',$cart['product_id'])->first();
            if($product->stocks <= $cart['product_qty']) {
                $updateStock = Product::where('id',$cart['product_id'])->update(['stocks'=> 0]);
            } else {
                $updateStock = Product::where('id',$cart['product_id'])->update(['stocks'=> $product->stocks - $cart['product_qty']]);
            }

            $data = [
                'order_id' => $order->id,
                'product_id' => $cart['product_id'],
                'quantity' => $cart['product_qty'],
                'total' => $cart['product_total']
            ];
            OrderDetail::create($data);
        }

        $code = Coupon::where('code',$coupon['coupon_code'])->first();
        $descQtyCoupon = Coupon::where('code',$coupon['coupon_code'])->update(['quantity' => $code->quantity - 1]);

        Session::forget('cart');
        Session::forget('coupon');
        Session::save();
        dd("success");
    }

    public function vnPayCheck()
    {
        
    }
}
