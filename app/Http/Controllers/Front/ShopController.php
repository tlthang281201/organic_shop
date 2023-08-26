<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use App\Service\Product\ProductServiceInterface;
use App\Service\ProductComment\ProductCommentServiceInterface;
use Illuminate\Http\Request;

class ShopController extends Controller
{
    private $productService;
    private $productCommentService;
    public function __construct(ProductServiceInterface $productService, ProductCommentServiceInterface $productCommentService)
    {
        $this->productService = $productService;
        $this->productCommentService = $productCommentService;
    }
    public function show($id) 
    {
        $product = $this->productService->find($id);
        $relatedProduct = $this->productService->getRelatedProducts($product);
        return view('front.shop.show',compact('product','relatedProduct'));
    }

    public function postComment(Request $req) 
    {
        $this->productCommentService->create($req->all());
        return redirect()->back();
    }
}
