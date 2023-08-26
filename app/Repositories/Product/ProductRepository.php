<?php

namespace App\Repositories\Product;

use App\Models\Product;
use App\Repositories\BaseRepositories;

class ProductRepository extends BaseRepositories implements ProductRepositoryInterface 
{
    public function getModel() 
    {
        return Product::class;
    }
    
    public function getRelatedProducts($product,$limit = 4)
    {
        return $this->model->where('cate_id',$product->cate_id)->limit($limit)->get();
    }

    public function getFeaturedProducts()
    {
        return $this->model->where('featured',1)->limit(9)->get();
    }
}