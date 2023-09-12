<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use App\Models\Order;
use App\Models\OrderDetail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class OrderController extends Controller
{
    public function index()
    {
        $orders = Order::where('user_id',Auth::user()->id)->orderByDesc('id')->get();
        return view('front.order.index',compact('orders'));
    }

    public function show($id)
    {
        $order = Order::where('order_code',$id)->first();
        if($order != null) {
            $checkUser = Order::where('order_code',$id)->where('user_id',Auth::user()->id)->first();
            if($checkUser != null) {
                // $orderDetail = OrderDetail::where('order_id',$order->id)->product->get();
                return view('front.order.show',compact('order','checkUser')); 
            } else {
                return view('front.order.show',compact('order','checkUser')); 
            }
        } else {
            return view('front.order.show',compact('order'));
        }
    }
}
