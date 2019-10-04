<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="{{asset('css/app.css')}}">
  </head>
  <body>
    <div class="container">
      <h3>Input Member</h3>

       {{-- menampilkan error validasi --}}
       @if($errors->any())
         <div class="alert alert-danger">
           <ul>
             @foreach($errors->all() as $error)
               <li>{{ $error }}</li>
             @endforeach
           </ul>
         </div>
       @endif

      <form action="/member/store" method="post">
        {{csrf_field()}}
        <div class="form-group">
          <label>Nama :</label>
          <input type="text" class="form-control @error('nama') is-invalid @enderror" name="nama" required="required" value="{{old('nama')}}" />
        </div>
        <div class="form-group">
          <label>Password :</label>
          <input type="password" class="form-control @error('pass') is-invalid @enderror" name="pass" required="required" value="{{old('pass')}}"/>
        </div>
        @error('pass')
          <div class="alert alert-danger">{{ $message }}</div>
        @enderror
        <div class="form-group">
          <label>Email : </label>
          <input type="text" class="form-control @error('email') is-invalid @enderror" name="email" required="required" value="{{old('email')}}"/>
        </div>
        @error('email')
          <div class="alert alert-danger">{{ $message }}</div>
        @enderror
        <div class="form-group">
          <label>phone : </label>
          <input type="text" class="form-control @error('phone') is-invalid @enderror" name="phone" required="required" value="{{old('phone')}}"/>
        </div>
        @error('phone')
          <div class="alert alert-danger">{{ $message }}</div>
        @enderror
        <input type="submit" class="btn btn-primary" value="Simpan">
      </form>
    </div>

  </body>
<html>
