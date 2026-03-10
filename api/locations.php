<?php
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET');
header('Access-Control-Allow-Headers: Content-Type');

require_once __DIR__ . '/config/database.php';

$db = new Database();
$conn = $db->getConnection();

$sql = "SELECT id, name, city, state, country FROM locations WHERE is_active = 1 ORDER BY city";
$stmt = $conn->prepare($sql);
$stmt->execute();
$locations = $stmt->fetchAll(PDO::FETCH_ASSOC);

echo json_encode(['success' => true, 'data' => $locations]);
