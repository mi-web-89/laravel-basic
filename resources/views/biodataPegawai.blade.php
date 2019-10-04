<!DOCTYPE html>
<html>
<head>
	<title>Tutorial Laravel #4</title>
</head>
<body>

	<h4>Tutorial Laravel : Passing Data Controller Ke View Laravel - www.malasngoding.com</h4>
	<a href="https://www.malasngoding.com/category/laravel">www.malasngoding.com</a>
	<div>Nama : {{$name}}</div>
	<ul>
		@foreach($matkul as $row)
		  <li>{{ $row }}</li>
		@endforeach
	<ul>

</body>
</html>
