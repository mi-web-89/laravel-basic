<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Laravel</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet">

        <!-- Styles -->
        <link rel="stylesheet" href="{{asset('css/app.css')}}">
    </head>
    <body>
      <div class="container">
        <h2 class="mb-2">Malasngoding - Table Trash</h2>

        <div class="mb-3">
          <a href="/item/restore-all" class="btn btn-success">Restore All</a>
          <a href="/item/delete-all-permanently" class="btn btn-danger">Delete All</a>
        </div>

        <table class="table table-bordered table-hover table-striped">
          <thead>
            <tr>
              <td>Nama</td>
              <td>Price</td>
              <td width="30%">Option</td>
            </tr>
          </thead>
        @foreach($itemTrash as $row)
        <tr>
          <td>{{$row->name}}</td>
          <td>{{$row->price}}</td>
          <td>
            <a href="/item/restore/{{$row->id}}" class="btn btn-success">Restore</a>
            <a href="/item/delete-permanently/{{$row->id}}" class="btn btn-danger">Delete</a>
          </td>
        </tr>
        @endforeach
        </table>
      </div>
    </body>
</html>
