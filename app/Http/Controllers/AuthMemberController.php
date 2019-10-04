<?php
namespace App\Http\Controllers;

use App\Member;
use Illuminate\HTTP\Request;
use Illuminate\Support\Facades\Hash;

use App\Http\Controllers\Controller;

class AuthMemberController extends Controller
{
  public function index() {
    if(session('login')) {
      return view('authMember.home');
    }
    else {
      return redirect('login')->with('alert', 'Login first');
    }

  }

  public function showRegisterForm() {
    return view('authMember.register');
  }

  public function register(Request $request) {
    $request->validate([
      'username' => ['required', 'string', 'max:25'],
      'phone' => ['required', 'string', 'max:18'],
      'email' => ['required', 'string', 'email', 'max:255', 'unique:member'],
      'password' => ['required', 'string', 'min:8', 'confirmed']
    ]);

    Member::create([
      'name' => $request->username,
      'phone' => $request->phone,
      'email' => $request->email,
      'password' => bcrypt($request->password)
    ]);

    return redirect('login')->with('alert-success', 'Register Success');
  }

  public function showLoginForm() {
    return view('authMember.login');
  }

  public function login(Request $request) {
    $request->validate([
      'email' => ['required', 'string', 'email', 'max:25'],
      'password' => ['required', 'min:8']
    ]);

    $dt = Member::where(['email' => $request->email])->first();
    if($dt)
    {
      if(Hash::check($request->password, $dt->password))
      {
        // Session::put('name', $data->name);
        // Session::put('login', TRUE);

        $request->session()->put('name', $dt->name);
        $request->session()->put('login', TRUE);
        return redirect('home');
      }
      else
      {
        return redirect('login')->with('alert', 'password or email does not match');
      }
    }
    else
    {
      return redirect('login')->with('alert', 'password or email does not match');
    }

  }

  public function logout() {
    session()->flush();
    return redirect('login')->with('alert', 'Login first');
  }


}
