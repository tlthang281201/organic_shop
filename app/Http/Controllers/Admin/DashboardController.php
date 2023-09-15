<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Order;
use App\Models\Product;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class DashboardController extends Controller
{
    public function index()
    {
        $admin_id = Session::get('admin_id');
        if($admin_id == null)
        {
            return redirect('admin/login');
        }
        $order = Order::get();
        $users = User::get();
        $products = Product::get();
        $profit = 0;
        $order_success = Order::where('paid',1)->get();
        foreach($order_success as $val) {
            $profit += $val->total;
        }
        return view('admin.dashboard.index',compact('order','users','products','profit'));
    }
}
