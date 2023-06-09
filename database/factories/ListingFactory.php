<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Http\UploadedFile;
use Illuminate\Support\Str;
use Spatie\LaravelIgnition\Support\Composer\FakeComposer;


/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Listing>
 */
class ListingFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        $title = $this->faker->sentence(rand(5, 7));
        $datetime = $this->faker->dateTimeBetween('-1 month', 'now');
        $content = '';
        for ($i = 0; $i < 5; $i++) {
            $content = $content . '<p class="mb-4">' . $this->faker->sentences(rand(5,10) , true) . '</p>';
        }

        return [
            'title' => $title,
            'slug' => Str::slug($title) . '-' . rand(1111, 9999),
            'company' => $this->faker->company,
            'location' => $this->faker->country,
            // 'logo' => basename(fake()->image(storage_path('app/logos'),null,false)),
            // 'logo' => basename(UploadedFile::fake()->image('app\logos')->store('listings')),
            'logo' =>fake()->image(storage_path('app/public'), 400, 300, null, false),

            'is_highlighted' => (rand(1, 9) > 7),
            'is_active' => true,
            'content' => $content,
            'apply_link' => $this->faker->url,
            'created_at' => $datetime,
            'updated_at' => $datetime,
        ];
    }
}
