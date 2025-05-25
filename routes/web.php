<?php

use Illuminate\Support\Facades\Route;

// Route::statamic('example', 'example-view', [
//    'title' => 'Example'
// ]);

// The route to the RSS feed.
Route::statamic('/feed/news', 'feed/feed', [
    'layout' => null,
    'content_type' => 'application/xml',
]);