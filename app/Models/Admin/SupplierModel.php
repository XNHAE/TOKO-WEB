<?php
// 文件：app/Models/Admin/SupplierModel.php

namespace App\Models\Admin;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SupplierModel extends Model
{
    use HasFactory;
    protected $table = "suppliers";
    protected $primaryKey = 'supplier_id';
    protected $fillable = [
        'supplier_nama',
        'supplier_slug',
        'supplier_alamat',
        'supplier_notelp',
    ];
}

?>