<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Transanction extends Model
{
    use HasFactory;

    protected $table = 'payment_transactions';


    protected $fillable = [
        'reference_number',
        'payer',
        'payee',
        'amount',
        'currency',
        'status',
        'notes',
    ];

    protected $hidden = [
        'updated_at',
        'deleted_at',
    ];

}
