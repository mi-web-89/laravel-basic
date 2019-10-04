<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Supplier extends Model
{
    protected $table = 'supplier';

    public function item() {
      //return $this->belongsTo('App\Item'); //one to one or one to many
      return $this->belongsToMany('App\item');
    }
}
