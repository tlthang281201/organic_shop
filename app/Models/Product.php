<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;

    protected $table = 'products';
    protected $primaryKey = 'id';
    protected $guarded = []; 

    public function productCategory() {
        return $this->belongsTo(Category::class,'cate_id','id');
    }

    public function productComments() {
        return $this->hasMany(ProductComment::class,'product_id','id');
    }

    public function orderDetails() {
        return $this->hasMany(OrderDetail::class,'product_id','id');
    }
}
