<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('m_events', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('slug')->unique();
            $table->string('description');
            $table->string('location')->nullable();
            $table->string('location_tips')->nullable();
            $table->string('custom_url')->unique()->nullable();
            $table->string('eventType');
            $table->string('eventCategory');
            $table->text('time_zone')->nullable();

            $table->date('start_date');
            $table->time('start_time');

            $table->date('end_date');
            $table->time('end_time');
            $table->string('event_date_type')->nullable();
            // social
            $table->text('website')->nullable();
            $table->text('instagram')->nullable();
            $table->text('twitter')->nullable();
            $table->text('facebook')->nullable();
            $table->tinyInteger('status')->default(1);
            $table->json('settings')->nullable();

            // event theme id
            $table->integer('theme_id')->default(1);
            $table->string('image')->nullable();
            $table->text('video_link')->nullable();
            $table->text('map_link')->nullable();

            $table->timestamps();
        });
    }
    // https://drawsql.app/teams/nl-draw/diagrams/event-ticket
    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('m_events');
    }
};

