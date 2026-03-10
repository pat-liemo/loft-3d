<?php
// Your secret Google Maps API Key (NEVER expose in frontend)
$apiKey = "AIzaSyB2f4UZlijopek2YntOTY2LmkJ5yUeoQj0";

// Get location parameter from frontend
$location = isset($_GET['location']) ? urlencode($_GET['location']) : "";

// Build the Google Maps embed URL
$mapUrl = "https://www.google.com/maps/embed/v1/place?key={$apiKey}&q={$location}";

// Return it as JSON
header('Content-Type: application/json');
echo json_encode(["url" => $mapUrl]);
?>