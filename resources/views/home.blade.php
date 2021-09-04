@extends('layouts.app')
@section('title', 'PT Life Mart | Final Project - BackEnd')

@section('content')
    @include('layouts.jumbotron')
    
    <div class="container mt-3">
        @if($barang->count() == null)
                <div class="alert alert-warning" role="alert">
                    Barang masih kosong
                </div>
        @else
            <div class="row">
                @foreach($barang as $data)
                <div class="col-xl-3 col-6 mb-3">
                    <div class="col-md-12 shadow-sm">
                        @if(Storage::exists('public/images/barang/'.$data->foto_barang))
                            <img src="{{ asset('storage/images/barang/'.$data->foto_barang) }}" alt="{{ $data->nama_barang }}" class="w-100">
                        @else
                            <img src="{{ $data->foto_barang }}" alt="{{ $data->nama_barang }}" class="w-100">
                        @endif
                        <div class="card-body">
                            <h5 class="card-title">{{ $data->nama_barang }}</h5>
                            <p class="card-text">Rp. {{ number_format($data->harga_barang) }}</p>
                            <p class="card-text">
                                Stok: 
                                @if($data->jumlah_barang === '0' || $data->jumlah_barang == null)
                                    <span class="text-danger">Habis</span>
                                @else
                                    {{ $data->jumlah_barang }}
                                @endif
                            </p>
                            <a href="{{ route('showBarang', $data->id) }}" class="btn btn-primary text-white w-100">Lihat <i class="uil uil-eye ms-1"></i></a>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
        @endif
    </div>
@endsection