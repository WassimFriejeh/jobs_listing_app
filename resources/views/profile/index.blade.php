@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center border border-white">
        <div class="row d-flex">
            <div class="col-3 "><img src="https://wallpapers.com/images/hd/cool-neon-blue-profile-picture-u9y9ydo971k9mdcf.jpg" class="w-50 rounded-circle"></div>
            <div class="col-5">
                <div class="d-flex border border-white align-items-baseline">
                    <div class=""><h1>{{ $user->username }}</h1></div>
                    <div class="ps-5"><a href="#">Edit profile</a></div>
                </div>
                <div>{{ $user->profile->title }}</div>
                <div>{{ $user->profile->description }}</div>
                <div>{{ $user->profile->url }}</div>
            </div>
            <div class="col-4 border border-white">

            </div>
        </div>
    </div>
</div>
@endsection
