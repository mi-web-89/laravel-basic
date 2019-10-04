<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Supplier;

class SupplierController extends Controller
{
    public function index() {
      $supplier = Supplier::all();
      return view('supplierHome', compact('supplier'));
    }
}
