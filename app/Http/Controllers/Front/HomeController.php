<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use App\Models\Contact;
use App\Models\Product;
use App\Service\Product\ProductServiceInterface;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class HomeController extends Controller
{
    private $productService;
    public function __construct(ProductServiceInterface $productService)
    {
        $this->productService = $productService;
    }

    public function index()
    {
        $featuredProducts = $this->productService->getFeaturedProducts();
        $discountProducts = Product::where('discount','>',0)->orderByDesc('id')->get();
        $newProduct = Product::orderByDesc('id')->get();
        $randomProduct = Product::inRandomOrder()->limit(6)->get();
        return view('front.index',compact('featuredProducts','discountProducts','newProduct','randomProduct'));
    }

    public function about()
    {
        return view('front.about');
    }

    public function contact()
    {
        return view('front.contact');
    }

    public function sendContact(Request $request) 
    {
        Contact::create($request->all());
        return redirect()->back()->with('success','Bạn đã gửi liên hệ thành công!');
    }

    public function viewLogin()
    {
        if(Auth::check()) {
            return redirect('/');
        }
        return view('front.login');
    }

    public function viewSignup()
    {
        if(Auth::check()) {
            return redirect('/');
        }
        return view('front.signup');
    }
}