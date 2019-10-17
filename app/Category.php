<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $fillable = [
        'name', 'slug', 'description'
    ];

    public function post() {
        return $this->belongsToMany(Post::class, 'category_post');
    }

}
