@extends('authMember.base')

@section('content')
  <section class="main-section">
    <div class="content">
      <h3>Welcome home : {{session('name')}}<h3>

      <a href="/logout" class="btn btn-primary">Logout</a>
    </div>
  </section>
@endsection
