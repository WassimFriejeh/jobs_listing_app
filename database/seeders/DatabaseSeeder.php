<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use App\Models\Listing;
use Illuminate\Http\UploadedFile;
use Faker\Factory as Faker;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use App\Models\Tag;
use Illuminate\Database\Seeder;
use App\Models\User;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();

        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);
        // \App\Models\Tag::factory(10)->create();
        $tags = Tag::factory(10)->create();
        // $faker = Faker::create();
        // $filename = basename($faker->image(storage_path('app/public')));
        User::factory(20)->create()->each(function ($user) use ($tags) {
            Listing::factory(rand(1, 4))->create([
                'user_id' => $user->id
                // Store the filename in the database
                // 'logo' => $filename
            ])->each(function ($listing) use ($tags) {
                $listing->tags()->attach($tags->random(3));
                // $image_name = $listing->logo;
                // $image_dir = "storage";
                // $image_path = $image_dir . $image_name;
                // $imageFile = new UploadedFile($image_path, $image_name);
                // Storage::putFileAs($image_path, $imageFile, $image_name);
            });
        });
    }
}
