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
        <h2 class="mb-2">Malasngoding - Input Item</h2>
        <form action="/item/update/{{$item->id}}" method="post">
          {{ csrf_field() }}
          {{ method_field('PUT') }}

          <div class="form-group">
            <label>Name</label>
            <input type="text" class="form-control" name="name" value=" {{ $item->name }}" />
            @error('name')
            <div class="alert alert-danger">
              {{$message}}
            </div>
            @enderror
          </div>

          <div class="form-group">
            <label>Price</label>
            <input type="text" class="form-control" name="price" value="{{ $item->price }}"/>
            @error('price')
            <div class="alert alert-danger">
              {{$message}}
            </div>
            @enderror
          </div>

          <input class="btn btn-primary" type="submit" value="save"/>
        </form>
      </div>
    </body>
</html>
