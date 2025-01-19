<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PastCommittee extends Model
{
    use HasFactory;

    protected $fillable = [
        'member_name',
        'member_designation',
        'representative',
        'member_period',
        'user_id',
    ];
}
