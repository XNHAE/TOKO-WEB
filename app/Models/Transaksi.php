<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Transaksi extends Model
{
    use HasFactory;

    protected $table = 'tbl_transaksi';
    protected $primaryKey = 'transaksi_id';
    protected $fillable = [
        'barang_kode',
        'customer_id',
        'tanggal',
        'jumlah',
        'harga_jual',
        'harga_beli'
    ];
}