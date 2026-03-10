<?php
/**
 * Test Upload System
 */

header('Content-Type: application/json');
error_reporting(E_ALL);
ini_set('display_errors', 0); // Don't display errors in output

require_once 'config/database.php';

$tests = [];

// Test 1: Check if uploads/properties directory exists
$uploadDir = 'uploads/properties/';
$tests['upload_dir_exists'] = file_exists($uploadDir);

// Test 2: Check if directory is writable
$tests['upload_dir_writable'] = is_writable($uploadDir);

// Test 3: Try to create directory if it doesn't exist
if (!$tests['upload_dir_exists']) {
    $tests['create_dir_attempt'] = mkdir($uploadDir, 0755, true);
    $tests['upload_dir_exists'] = file_exists($uploadDir);
    $tests['upload_dir_writable'] = is_writable($uploadDir);
}

// Test 4: Check GD library
$tests['gd_available'] = extension_loaded('gd');
if ($tests['gd_available']) {
    $tests['gd_info'] = gd_info();
}

// Test 5: Check session
session_start();
$tests['session_active'] = session_status() === PHP_SESSION_ACTIVE;
$tests['user_logged_in'] = isset($_SESSION['user_id']);
$tests['user_id'] = $_SESSION['user_id'] ?? null;

// Test 6: Check database connection
try {
    $db = Database::getInstance();
    $tests['database_connected'] = true;
} catch (Exception $e) {
    $tests['database_connected'] = false;
    $tests['database_error'] = $e->getMessage();
}

// Test 7: Check PropertyImage class
try {
    include_once 'classes/PropertyImage.php';
    $tests['property_image_class_loaded'] = class_exists('PropertyImage');
} catch (Exception $e) {
    $tests['property_image_class_loaded'] = false;
    $tests['class_error'] = $e->getMessage();
}

// Test 8: Check file upload settings
$tests['upload_max_filesize'] = ini_get('upload_max_filesize');
$tests['post_max_size'] = ini_get('post_max_size');
$tests['max_file_uploads'] = ini_get('max_file_uploads');

echo json_encode([
    'success' => true,
    'tests' => $tests,
    'recommendations' => [
        'upload_dir' => $tests['upload_dir_exists'] && $tests['upload_dir_writable'] ? 'OK' : 'NEEDS FIX',
        'gd_library' => $tests['gd_available'] ? 'OK' : 'INSTALL GD',
        'session' => $tests['user_logged_in'] ? 'OK' : 'NOT LOGGED IN',
        'database' => $tests['database_connected'] ? 'OK' : 'CONNECTION FAILED'
    ]
], JSON_PRETTY_PRINT);
?>
