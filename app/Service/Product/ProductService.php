<?php

namespace App\Service\Product;

use App\Repositories\Product\ProductRepositoryInterface;
use App\Service\BaseService;

class ProductService extends BaseService implements ProductServiceInterface 
{
    public $repository;
    
    public function __construct(ProductRepositoryInterface $productRepository)
    {
        $this->repository = $productRepository;
    }

//     public function find(int $id)
//    {
//         $product = $this->repository->find($id);

//         $avgRating = 0;
//         $sumRating = array_sum(array_column());
//    }
}