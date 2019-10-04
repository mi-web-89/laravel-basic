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
        <h2 class="mb-2">Malasngoding - Table Item</h2>

        <a href="/item/input" class="btn btn-primary mb-2">Input Item</a>
        <a href="/item/trash" class="btn btn-danger ml-2 mb-2">Trash</a>
        <table class="table table-bordered table-hover table-striped">
          <thead>
            <tr>
              <td>Nama</td>
              <td>City</td>
              <td>Item</td>
              <td>Option</td>
            </tr>
          </thead>
        @foreach($supplier as $row)
        <tr>
          <td>{{$row->name}}</td>
          <td>{{$row->city}}</td>
          <td>{{$row->item_id}}</td>
          <td>
            <a href="/item/edit/{{$row->id}}" class="btn btn-primary">Edit</a>
            <a href="/item/delete/{{$row->id}}" class="btn btn-danger">Delete</a>
          </td>
        </tr>
        @endforeach
        </table>
      </div>
    </body>
</html>
