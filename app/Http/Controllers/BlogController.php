<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class BlogController extends Controller {
  public function home() {
    return view('homeBlog');
  }

  public function about() {
    return view('aboutBlog');
  }

  public function contact() {
    return view('contactBlog');
  }
}
