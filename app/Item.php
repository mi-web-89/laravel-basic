<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Item extends Model
{
  use SoftDeletes;

  protected $table = 'item';
  protected $fillable = ['name', 'price'];
  protected $dates = ['deleted_at'];

  public function supplier() {
    //return $this->hasOne('App\Supplier');  //num of record must be same : one to one
    //return $this->hasMany('App\Supplier'); // one to hasMany
    return $this->belongsToMany('App\Supplier');
  }
}
