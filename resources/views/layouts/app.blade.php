<!DOCTYPE html>
<html lang="{{ config('app.locale') }}">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <meta name="csrf-token" content="{{ csrf_token() }}" />

  <title>Ocean Education</title>

  <link href="{{ URL::asset('bootstrap/css/bootstrap.min.css')}}" rel="stylesheet">
  <link href="{{ URL::asset('bootstrap/css/custom.css')}}" rel="stylesheet">


  <!-- Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Raleway:100,600" rel="stylesheet" type="text/css">


  <!--Data Table Css-->
  <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css"/>
  <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/rowreorder/1.2.0/css/rowReorder.dataTables.min.css"/>
  <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/responsive/2.1.1/css/responsive.dataTables.min.css"/>

  <!--Data Table Javascript-->
  <script type="text/javascript" src="//code.jquery.com/jquery-1.12.4.js"></script>
  <script type="text/javascript" src="https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script>
  <script type="text/javascript" src="https://cdn.datatables.net/rowreorder/1.2.0/js/dataTables.rowReorder.min.js"></script>
  <script type="text/javascript" src="https://cdn.datatables.net/responsive/2.1.1/js/dataTables.responsive.min.js"></script>




  <!-- Styles -->
  <style>
    html, body {
      width: 100%;
      background-color: #fff;
      /*font-family: 'Raleway', sans-serif;*/
      font-weight: 100;
      height: 100vh;
      /*margin: 0;*/
    }

    .full-height {
      height: 100vh;
    }

    .flex-center {
     /* align-items: center;*/
     display: flex;
     justify-content: center;
   }

   .position-ref {
    position: relative;
  }

  .top-right {
    position: absolute;
    right: 10px;
    top: 18px;
  }

  .content {
    text-align: center;
    margin-left: 2%;    
    margin-right: 2%;
  }

  .links > a {
    color: #636b6f;
    padding: 0 25px;
    font-size: 12px;
    font-weight: 600;
    letter-spacing: .1rem;
    text-decoration: none;
    text-transform: uppercase;
  }

  .m-b-md {
   /* margin-top:130px; */
   margin-bottom: 30px;
   width: 100%;
 }
 .logo {
  width: 300px;
  height: 150px;
  background-image: url("logo.png");
  background-position: center top;
  background-repeat: no-repeat;
  padding:0px;
  margin-top: 30px;
  margin-left: auto;
  margin-right: auto;
}

@media only screen and (min-width: 20em) {
  .logo {
    /*background-position: center 300px;*/
    
  }
}
/* 328px */

@media only screen and (min-width: 48em){
  .logo {
    /*background-position: left -300px;*/
    width: 300px;
    height: 150px;
  }
}
/* 768px */

@media only screen and (min-width: 56.25em){
  .logo {
    /*background-position: left 0px;*/
    width: 300px;
    height: 150px;
  }
}
/* 900px */

</style>
</head>
<body>
    <div class="content">
      <div class="logo">
      </div>
      <div>
        @yield('content')
      </div>
      <br>
      <span>PT Ocean Education @2017</span>
    </div>
</body>
</html>
