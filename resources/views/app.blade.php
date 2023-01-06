<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title inertia>{{ config('app.name') }}</title>
        
        <!-- Fontawesome -->
        <script src="https://kit.fontawesome.com/38516d3f67.js" crossorigin="anonymous"></script>
        <!-- favicon -->
        @php
            $settings = \App\Models\SiteSetting::where('name', 'fave_icon')->first();
        @endphp
        <link rel="shortcut icon" href="{{ asset(@$settings->value) }}" type="image/x-icon">

        <!-- Scripts -->
        @routes
        @vite(['resources/js/app.js', "resources/js/Pages/{$page['component']}.vue"])
        @inertiaHead
        <script type='text/javascript' src='https://platform-api.sharethis.com/js/sharethis.js#property=63b84e780f3ebf00195508f0&product=sop' async='async'></script>
    </head>
    <body class="" id="root__body">
        @inertia
    </body>
</html>
