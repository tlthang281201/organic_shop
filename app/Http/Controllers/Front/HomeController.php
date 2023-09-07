<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use App\Models\Contact;
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

        return view('front.index',compact('featuredProducts'));
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