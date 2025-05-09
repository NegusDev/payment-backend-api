<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Transanction;

Route::middleware(['auth:sanctum'])->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('transactions', [Transanction::class, 'index']);

Route::post('initiate-transaction', [Transanction::class, 'store']);

Route::get('check-status/{transactionReference}', [Transanction::class, 'checkTransactionStatus']);
