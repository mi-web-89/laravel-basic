<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link rel="stylesheet" href="{{asset('css/app.css')}}">
  </head>
  <body>
    <div class="container">
      <h4>Edit Member</h4>
      @if($errors->any())
        <div class="alert alert-danger">
          @foreach($errors->all() as $error)
            <div>{{$error}}</div>
          @endforeach
        </div>
      @endif

      @foreach($member as $row)
      <form action="/member/update" method="post">
        {{csrf_field()}}
        <input type="hidden" name="id" value="{{$row->id}}">
        <div class="form-group">
          <label>Nama</label>
          <input type="text" class="form-control" name="nama" required="required" value="{{$row->name}}"/>
        </div>
        <div class="form-group">
          <label>Email</label>
          <input type="text" class="form-control" name="email" required="required" value="{{$row->email}}"/>
        </div>
        <div class="form-group">
          <label>Phone</label>
          <input type="text" class="form-control" name="phone" required="required" value="{{$row->phone}}"/>
        </div>
        <input type="submit" value="Simpan">
      </form>
      @endforeach
    </div>

    <script src="{{asset('js/app.js')}}"></script>
  </body>
<html>
