<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class DonationModel extends Model {

	protected $table="donation";
	protected $fillable=["fullname","alias","meta_keyword","meta_description","total_cost","sort_order","status","created_at","updated_at"];		
}
