@extends('authMember.base')

@section('content')
<!-- main section -->
<section class="main-section">
  <div class="content">
    <div class="container">

      <div class="row d-flex justify-content-center">
        <div class="col-md-6 mt-5">

          <div class="card shadow">
            <div class="card-header">
              <h3 class="text-center">Login</h3>
            </div>

            <div class="card-body">

              @if(\Session::has('alert'))
                <div class="alert alert-danger">
                  <div>{{Session::get('alert')}}</div>
                </div>
              @endif
              @if(\Session::has('alert-success'))
                <div class="alert alert-success">
                  <div>{{Session::get('alert-success')}}</div>
                </div>
              @endif

              <form method="post" action="/login">
                @csrf

                <div class="form-group">
                  <label for="email">Email : </label>
                  <input type="email" class="form-control @error('email') is-invalid  @enderror" id="email" name="email" value="{{old('email')}}" autocomplete="email" required="required">

                  @error('email')
                    <span class="invalid-feedback" role="alert">
                      <strong>{{ $message }}</strong>
                    </span>
                  @enderror
                </div>

                <div class="form-group">
                  <label for="password">Password : </label>
                  <input type="password" class="form-control @error('pwd') is-invalid  @enderror" id="password" name="password" required="required">

                  @error('password')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                  @enderror
                </div>

                <div class="form-group">
                  <button type="submit" class="btn btn-primary">Login</button>
                </div>

              </form>

            </div>
          </div>

        </div>
      </div>

    </div>
  </div>
</section>
<!-- end main section -->
@endsection
