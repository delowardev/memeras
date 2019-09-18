<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Category;
use Faker\Generator as Faker;

$factory->define(Category::class, function (Faker $faker) {
    return [
        'slug'          => $faker->word(),
        'name'          => $faker->word(),
        'description'   => $faker->text(50)
    ];
});
