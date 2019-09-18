<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Post;
use App\User;
use Faker\Generator as Faker;

$factory->define(Post::class, function (Faker $faker) {
    return [
        'user_id'   => User::inRandomOrder()->first()->id,
        'title'     => $faker->text(45),
        'content'   => $faker->text(500)
    ];
});
