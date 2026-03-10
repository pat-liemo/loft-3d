<?php
require_once __DIR__ . '/../config/database.php';

class Model {
    protected $table;
    protected $db;
    
    public function __construct() {
        $this->db = Database::getInstance();
    }
    
    public function query($sql, $params = []) {
        try {
            $stmt = $this->db->prepare($sql);
            $stmt->execute($params);
            return $stmt->fetchAll(PDO::FETCH_ASSOC);
        } catch (PDOException $e) {
            error_log("Database query error: " . $e->getMessage());
            return [];
        }
    }
    
    public function queryOne($sql, $params = []) {
        try {
            $stmt = $this->db->prepare($sql);
            $stmt->execute($params);
            return $stmt->fetch(PDO::FETCH_ASSOC);
        } catch (PDOException $e) {
            error_log("Database query error: " . $e->getMessage());
            return null;
        }
    }
}