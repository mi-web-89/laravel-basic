<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="{{asset('css/app.css')}}">
    <style>
      .pagination {
        clear: both;
      }
      .pagination li {
        float: left;
        list-style: none;
        margin: 5px;
      }
    </style>
  </head>
  <body>

    <div class="container">
      <p>Cari Data Pegawai</p>
      <form action="/member/search" method="GET" class="form-inline mb-2">
        {{csrf_field()}}
        <input type="text" class="form-control mr-3" name="keyword" placeholder="Search..">
        <input type="submit" class="btn btn-primary" value="Search">
      </form>

      <h5>Data Member</h5>
      <table class="table table-bordered">
        <thead>
          <tr>
            <th>Name</th>
            <th>Gender</th>
            <th>Birthday</th>
            <th>Email</th>
            <th>Phone</th>
            <th>Opsi</th>
          </tr>
        </thead>
        <tbody>
          @foreach($member as $row)
          <tr>
            <td>{{$row->name}}</td>
            <td>{{$row->gender}}</td>
            <td>{{$row->birthday}}</td>
            <td>{{$row->email}}</td>
            <td>{{$row->phone}}</td>
            <td>
              <a class="btn btn-primary" href="/member/edit/{{$row->id}}">Edit</a>
              <a class="btn btn-danger" href="/member/delete/{{$row->id}}">Hapus</a>
            </td>
          </tr>
          @endforeach
        </tbody>
      </table>
      {{$member->links()}}

      <p>Halaman : {{ $member->currentPage() }}</p>
  	  <p>Jumlah Data : {{ $member->total() }}</p>
  	  <p>Data Per Halaman : {{ $member->perPage() }}</p>
    </div>

  </body>
<html>
