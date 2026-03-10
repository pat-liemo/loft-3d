<?php
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, POST, PUT, DELETE');
header('Access-Control-Allow-Headers: Content-Type');

// Mock property data for testing - more properties for better horizontal scrolling demo
$mockProperties = [
    [
        'id' => 1,
        'name' => 'Modern Downtown Loft',
        'image' => 'https://images.unsplash.com/photo-1560448204-e02f11c3d0e2?w=400&h=300&fit=crop',
        'avg_rating' => 4.8,
        'price' => 2900,
        'category' => 'apartment',
        'is_featured' => 1
    ],
    [
        'id' => 2,
        'name' => 'Luxury Penthouse Suite',
        'image' => 'https://images.unsplash.com/photo-1545324418-cc1a3fa10c00?w=400&h=300&fit=crop',
        'avg_rating' => 4.6,
        'price' => 3200,
        'category' => 'luxury',
        'is_featured' => 1
    ],
    [
        'id' => 3,
        'name' => 'Cozy Studio Apartment',
        'image' => 'https://images.unsplash.com/photo-1502672260266-1c1ef2d93688?w=400&h=300&fit=crop',
        'avg_rating' => 4.5,
        'price' => 1800,
        'category' => 'apartment',
        'is_featured' => 0
    ],
    [
        'id' => 4,
        'name' => 'Spacious Family Home',
        'image' => 'https://images.unsplash.com/photo-1564013799919-ab600027ffc6?w=400&h=300&fit=crop',
        'avg_rating' => 4.7,
        'price' => 4200,
        'category' => 'house',
        'is_featured' => 1
    ],
    [
        'id' => 5,
        'name' => 'Urban Condo',
        'image' => 'https://images.unsplash.com/photo-1512917774080-9991f1c4c750?w=400&h=300&fit=crop',
        'avg_rating' => 4.4,
        'price' => 2500,
        'category' => 'condo',
        'is_featured' => 0
    ],
    [
        'id' => 6,
        'name' => 'Luxury Villa',
        'image' => 'https://images.unsplash.com/photo-1613490493576-7fde63acd811?w=400&h=300&fit=crop',
        'avg_rating' => 4.9,
        'price' => 5500,
        'category' => 'luxury',
        'is_featured' => 1
    ],
    [
        'id' => 7,
        'name' => 'City View Apartment',
        'image' => 'https://images.unsplash.com/photo-1522708323590-d24dbb6b0267?w=400&h=300&fit=crop',
        'avg_rating' => 4.3,
        'price' => 2200,
        'category' => 'apartment',
        'is_featured' => 0
    ],
    [
        'id' => 8,
        'name' => 'Suburban House',
        'image' => 'https://images.unsplash.com/photo-1570129477492-45c003edd2be?w=400&h=300&fit=crop',
        'avg_rating' => 4.6,
        'price' => 3800,
        'category' => 'house',
        'is_featured' => 1
    ],
    [
        'id' => 9,
        'name' => 'Downtown Condo',
        'image' => 'https://images.unsplash.com/photo-1484154218962-a197022b5858?w=400&h=300&fit=crop',
        'avg_rating' => 4.2,
        'price' => 2800,
        'category' => 'condo',
        'is_featured' => 0
    ],
    [
        'id' => 10,
        'name' => 'Executive Suite',
        'image' => 'https://images.unsplash.com/photo-1582268611958-ebfd161ef9cf?w=400&h=300&fit=crop',
        'avg_rating' => 4.8,
        'price' => 4800,
        'category' => 'luxury',
        'is_featured' => 1
    ],
    [
        'id' => 11,
        'name' => 'Waterfront Condo',
        'image' => 'https://images.unsplash.com/photo-1449824913935-59a10b8d2000?w=400&h=300&fit=crop',
        'avg_rating' => 4.5,
        'price' => 3200,
        'category' => 'condo',
        'is_featured' => 0
    ],
    [
        'id' => 12,
        'name' => 'Garden House',
        'image' => 'https://images.unsplash.com/photo-1518780664697-55e3ad937233?w=400&h=300&fit=crop',
        'avg_rating' => 4.4,
        'price' => 3600,
        'category' => 'house',
        'is_featured' => 0
    ]
];

if ($_SERVER['REQUEST_METHOD'] === 'GET') {
    $category = $_GET['category'] ?? null;
    $featured = isset($_GET['featured']) ? 1 : null;
    
    $filteredProperties = $mockProperties;
    
    if ($featured !== null) {
        $filteredProperties = array_filter($mockProperties, function($property) {
            return $property['is_featured'] == 1;
        });
    } elseif ($category) {
        $filteredProperties = array_filter($mockProperties, function($property) use ($category) {
            return $property['category'] === $category;
        });
    }
    
    echo json_encode([
        'success' => true,
        'data' => array_values($filteredProperties)
    ]);
} else {
    http_response_code(405);
    echo json_encode([
        'success' => false,
        'message' => 'Method not allowed'
    ]);
}
?>