<?php

namespace App\Models\Admin;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PastCommitteeDetails extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'designation',
        'represent',
        'represent_url',
        'image_path',
        'description',
        'past_committee_id',
        'member_id',
        'index',
    ];
}
