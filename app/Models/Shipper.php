<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Shipper extends Model
{
    use HasFactory;
    public $timestamps = false;
    protected $table = 'shippers';
    protected $primaryKey = 'id';
    protected $guarded = [];  
    
    public function order() {
        return $this->hasMany(Order::class,'shipper_id','id');
    }
}
