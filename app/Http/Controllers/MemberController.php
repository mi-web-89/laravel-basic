<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class MemberController extends Controller {
  public function index() {
      //$query = DB::table('member')->get();
      $query = DB::table('member')->paginate(10);
      return view('index_member', ['member' => $query]);
  }

  public function input() {
    return view('input_member');
  }

  public function store(Request $request) {
    $validate_data = $request->validate([
      'nama' => 'bail|required|min:5|max:32',
        'pass' => 'bail|required|min:6|max:32',
        'email' => 'bail|required|min:16|max:64',
        'phone' => 'required|min:9|max:16|'
    ]);

    DB::table('member')->insert([
      'name' => $request->nama,
      'password' => $request->pass,
      'email' => $request->email,
      'phone' => $request->phone
    ]);

    return redirect('/member');
  }

  public function edit($id) {
    $query = DB::table('member')->where('id', $id)->get();
    return view('edit_member', ['member' => $query]);
  }

  public function update(Request $request) {
    $request->validate([
      'nama' => 'required|min:6'
    ]);

    DB::table('member')->where('id', $request->id)->update([
      'name' => $request->nama,
      'email' => $request->email,
      'phone' => $request->phone,
    ]);

    return redirect('/member');
  }

  public function delete($id) {
    DB::table('member')->where('id', $id)->delete();
    return redirect('/member');
  }

  public function search(Request $request) {
    $query = DB::table('member')->where('name', 'like', '%' . $request->keyword . '%')->paginate(10);
    return view('index_member', ['member' => $query]);
  }

}
