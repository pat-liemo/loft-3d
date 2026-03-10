<?php
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, POST, PUT, DELETE');
header('Access-Control-Allow-Headers: Content-Type');

require_once __DIR__ . '/classes/Property.php';

$property = new Property();

if ($_SERVER['REQUEST_METHOD'] === 'GET') {
    if (isset($_GET['id'])) {
        $id = intval($_GET['id']);
        $data = $property->getById($id);
        
        if ($data) {
            $data['features'] = $property->getIngredients($id);
            $data['amenities'] = $property->getAllergens($id);
            $data['related'] = $property->getPairings($id);
            $data['images'] = $property->getImages($id);
            
            echo json_encode(['success' => true, 'data' => $data]);
        } else {
            http_response_code(404);
            echo json_encode(['success' => false, 'message' => 'Property not found']);
        }
    } else {
        $filters = [
            'category' => $_GET['category'] ?? null,
            'location' => $_GET['location'] ?? null,
            'is_featured' => isset($_GET['featured']) ? 1 : null
        ];
        
        $data = $property->getAll($filters);
        echo json_encode(['success' => true, 'data' => $data]);
    }
}
