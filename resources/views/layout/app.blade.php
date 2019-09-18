<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.10/css/select2.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="{{asset('css/app.css')}}">
</head>
<body>
    <div id="memeras">
        <header>
            <div class="container-fluid">
                <div class="row justify-content-between align-items-center">
                    <div class="col-auto">
                        <h1 class="site-title"><a href="{{url('./')}}">Hello Logo</a></h1>
                    </div>
                    <div class="col-auto">
                        <ul class="navigation-menu">
                            <li><a href="{{url('./posts/create')}}">Create Post</a></li>
                            <li><a href="{{url('./posts/create')}}">Create Post</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </header>

@yield('content')

        <footer>
            <div class="container">
                <p class="copyright-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Rem esse doloribus corrupti?</p>
            </div>
        </footer>
    </div>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/7617ec241a.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.10/js/select2.min.js"></script>
    <script src="{{asset('js/app.js')}}"></script>

</body>
</html>
