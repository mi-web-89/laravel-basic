@extends('authMember.base')

@section('content')
<!-- main section -->
<section class="main-section">
  <div class="content">
    <div class="container">

      <div class="row d-flex justify-content-center">
        <div class="col-md-7 mt-5">

          <div class="card shadow">

            <div class="card-header">
              <h3 class="text-center">Register</h3>
            </div>

            <div class="card-body">
              @if(\Session::has('alert'))
                <div class="alert alert-danger">
                  <div>{{Session::get('alert')}}</div>
                </div>
              @endif
              @if(\Session::has('alert-success'))
                <div class="alert alert-success">
                  <div>{{Session::get(alert-success)}}</div>
                </div>
              @endif

              <form action="/register" method="post">
                @csrf

                <div class="form-group">
                  <label for="username">Username : </label>
                  <input type="text" class="form-control @error('username') is-invalid  @enderror" id="username" name="username" value="{{old('username')}}" autocomplete="username" required="required">

                  @error('username')
                    <span class="invalid-feedback" role="alert">
                      <strong>{{ $message }}</strong>
                    </span>
                  @enderror
                </div>

                <div class="form-group">
                  <label for="phone">Mobile Number : </label>
                  <input type="text" class="form-control @error('phone') is-invalid  @enderror" id="phone" name="phone" value="{{old('phone')}}" autocomplete="phone" required="required">

                  @error('phone')
                    <span class="invalid-feedback" role="alert">
                      <strong>{{ $message }}</strong>
                    </span>
                  @enderror
                </div>

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
                  <label for="pwd">Password : </label>
                  <input type="password" class="form-control @error('password') is-invalid  @enderror" id="pwd" name="password" required="required">

                  @error('password')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                  @enderror
                </div>

                <div class="form-group">
                  <label for="cnf_pwd">Confirm Password : </label>
                  <input type="password" class="form-control @error('password_confirmation') is-invalid  @enderror" id="cnf_pwd" name="password_confirmation" required="required">

                  @error('password_confirmation')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                  @enderror
                </div>

                <div class="form-group">
                  <button type="submit" class="btn btn-primary">Register</button>
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
