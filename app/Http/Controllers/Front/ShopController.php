<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Product;
use App\Service\Product\ProductServiceInterface;
use App\Service\ProductCategory\ProductCategoryServiceInterface;
use App\Service\ProductComment\ProductCommentServiceInterface;
use Illuminate\Http\Request;

class ShopController extends Controller
{
    private $productService;
    private $productCommentService;
    private $productCategoryService;

    public function __construct(
        ProductServiceInterface $productService, 
        ProductCommentServiceInterface $productCommentService,
        ProductCategoryServiceInterface $productCategoryService)
    {
        $this->productService = $productService;
        $this->productCommentService = $productCommentService;
        $this->productCategoryService = $productCategoryService;
    }

    public function show($alias) 
    {
        // $product = $this->productService->find($id);
        $product = Product::where('alias',$alias)->first();
        $relatedProduct = $this->productService->getRelatedProducts($product);
        return view('front.shop.show',compact('product','relatedProduct'));
    }

    public function postComment(Request $req) 
    {
        $this->productCommentService->create($req->all());
    }

    public function loadComment($id)
    {
        $comment = $this->productService->find($id)->productComment;
        return view('ajax.product_comment',compact('comment'));
    }

    public function index(Request $req) 
    {
        $categories = $this->productCategoryService->all();
        $products = $this->productService->getProductOnIndex($req);

        return view('front.shop.index',compact('products','categories'));
    }

    public function category($alias, Request $req)
    {
        $categories = $this->productCategoryService->all();
        $products = $this->productService->getProductByCategory($alias,$req);
        $categoryName = Category::where('alias',$alias)->first()->name;

        return view('front.shop.index',compact('products','categories','categoryName'));
    }
}
