<?php
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, POST, DELETE');
header('Access-Control-Allow-Headers: Content-Type');

require_once __DIR__ . '/classes/FavProperty.php';

$favorite = new FavProperty();

session_start();
$userId = $_SESSION['user_id'] ?? null;

if (!$userId) {
    http_response_code(401);
    echo json_encode(['success' => false, 'message' => 'Unauthorized']);
    exit;
}

if ($_SERVER['REQUEST_METHOD'] === 'GET') {
    $data = $favorite->getUserFavorites($userId);
    echo json_encode(['success' => true, 'data' => $data]);
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $input = json_decode(file_get_contents('php://input'), true);
    $propertyId = $input['property_id'] ?? null;
    
    if (!$propertyId) {
        http_response_code(400);
        echo json_encode(['success' => false, 'message' => 'Property ID required']);
        exit;
    }
    
    $result = $favorite->toggle($userId, $propertyId);
    echo json_encode(['success' => true, 'data' => $result]);
}

if ($_SERVER['REQUEST_METHOD'] === 'DELETE') {
    $propertyId = $_GET['id'] ?? null;
    
    if (!$propertyId) {
        http_response_code(400);
        echo json_encode(['success' => false, 'message' => 'Property ID required']);
        exit;
    }
    
    $result = $favorite->remove($userId, $propertyId);
    echo json_encode(['success' => true, 'data' => $result]);
}
