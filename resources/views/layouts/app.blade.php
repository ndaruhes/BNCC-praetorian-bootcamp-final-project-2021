<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>@yield('title')</title>

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
</head>
<body>
    <div id="app">
        <!-- NAVBAR -->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">\
            <div class="container">
                <a class="navbar-brand" href="#">PT Life Mart</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="{{ url('/') }}"><i class="uil uil-estate me-1"></i> Home</a>
                        </li>
                        @guest
                            @if (Route::has('login'))
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('login') }}"><i class="uil uil-sign-in-alt me-1"></i> Login</a>
                                </li>
                            @endif

                            @if (Route::has('register'))
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('register') }}"><i class="uil uil-user-plus me-1"></i> Register</a>
                                </li>
                            @endif
                        @else
                            @if(Auth::user()->role == 'Admin')
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ url('barang') }}"><i class="uil uil-cube me-1"></i> Kelola Barang</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('kategori.index') }}"><i class="uil uil-books me-1"></i> Kelola Kategori</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('indexPesanan') }}"><i class="uil uil-history ms-1"></i> Kelola Pesanan</a>
                                </li>
                            @elseif(Auth::user()->role == 'Member')
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('indexPesanan') }}"><i class="uil uil-history ms-1"></i> Pesanan</a>
                                </li>
                            @endif
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    <i class="uil uil-user me-1"></i>  {{ Auth::user()->name }}
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <li>
                                        <a class="dropdown-item" href="{{ route('logout') }}" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">Logout</a>
                                        <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                            @csrf
                                        </form>
                                    </li>
                                </ul>
                            </li>
                        @endguest
                    </ul>
                </div>
            </div>
        </nav>

        <!-- CONTENT -->
        <div>
            @yield('content')
        </div>

        <!-- DELETE MODAL -->
        <div class="modal fade" id="confirmDeleteModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
            <div class="modal-dialog confirm" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Konfirmasi Hapus</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        Apakah anda yakin ingin menghapus data?
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-outline-secondary btn-sm" data-dismiss="modal">Close</button>
                        <form id="confirm_delete" method="POST" action="">
                            @method('delete')
                            @csrf
                            <button type="submit" class="btn btn-danger btn-sm text-white">Hapus</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <!-- TERIMA PESANAN MODAL -->
        <div class="modal fade" id="konfirmasiTerimaPesananModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
            <div class="modal-dialog confirm" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Konfirmasi Terima Pesanan</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        Anda yakin ingin menerima pesanan ini?
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-outline-secondary btn-sm" data-dismiss="modal">Close</button>
                        <form id="confirm_accept" method="POST" action="">
                            @method('put')
                            @csrf
                            <button type="submit" class="btn btn-success btn-sm text-white">Terima</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- TOAST -->
    @if(session('status'))
    <div class="position-fixed bottom-0 end-0 p-3" style="z-index: 5">
        <div class="toast align-items-center text-white bg-success border-0" role="alert" aria-live="assertive" aria-atomic="true">
            <div class="d-flex">
                <div class="toast-body">
                    <i class="uil uil-check-circle me-2"></i> {{session('status')}}
                </div>
                <button type="button" class="btn-close btn-close-white me-2 m-auto" data-bs-dismiss="toast" aria-label="Close"></button>
            </div>
        </div>
    </div>
    @endif

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js" integrity="sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js" integrity="sha384-nsg8ua9HAw1y0W1btsyWgBklPnCUAFLuTMS2G72MMONqmOymq585AcH49TLBQObG" crossorigin="anonymous"></script>
    <script>
        $(document).ready(function(){
            $('#confirmDeleteModal').on('show.bs.modal', function(e) {
                $(this).find('#confirm_delete').attr('action', $(e.relatedTarget).data('uri'));
            });
        });

        $(document).ready(function(){
            $('#konfirmasiTerimaPesananModal').on('show.bs.modal', function(e) {
                $(this).find('#confirm_accept').attr('action', $(e.relatedTarget).data('uri'));
            });
        });

        const toastElList = [].slice.call(document.querySelectorAll('.toast'))
        const toastList = toastElList.map(function (toastEl) {
            return new bootstrap.Toast(toastEl)
        })
        toastList.forEach(toast => toast.show());
    </script>
    @yield('addedScript')
</body>
</html>
