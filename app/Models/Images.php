<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Images extends Model
{
    use HasFactory;
    
    protected $fillable = [
        "foreign_id",
        "type",
        "path"
    ];
}
