<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class ProductParamModel extends Model {

	protected $table="product_param";
	protected $fillable=["product_id","param_id","created_at","updated_at"];		
}
