<?php
require_once __DIR__ . '/BaseModel.php';

class Property extends Model {
    protected $table = 'properties';
    
    public function getAll($filters = []) {
        $sql = "SELECT p.*, 
                (SELECT AVG(rating) FROM reviews WHERE property_id = p.id) as avg_rating,
                (SELECT COUNT(*) FROM reviews WHERE property_id = p.id) as review_count
                FROM {$this->table} p WHERE 1=1";
        
        $params = [];
        
        if (!empty($filters['category'])) {
            $sql .= " AND p.category = ?";
            $params[] = $filters['category'];
        }
        
        if (!empty($filters['location'])) {
            $sql .= " AND p.location_id = ?";
            $params[] = $filters['location'];
        }
        
        if (isset($filters['is_featured'])) {
            $sql .= " AND p.is_featured = ?";
            $params[] = $filters['is_featured'];
        }
        
        $sql .= " ORDER BY p.created_at DESC";
        
        return $this->query($sql, $params);
    }
    
    public function getById($id) {
        $sql = "SELECT p.*, 
                (SELECT AVG(rating) FROM reviews WHERE property_id = p.id) as avg_rating,
                (SELECT COUNT(*) FROM reviews WHERE property_id = p.id) as review_count
                FROM {$this->table} p 
                WHERE p.id = ?";
        
        $result = $this->query($sql, [$id]);
        return $result[0] ?? null;
    }
    
    public function getIngredients($propertyId) {
        $sql = "SELECT * FROM property_features WHERE property_id = ? ORDER BY display_order";
        return $this->query($sql, [$propertyId]);
    }
    
    public function getAllergens($propertyId) {
        $sql = "SELECT * FROM property_amenities WHERE property_id = ?";
        return $this->query($sql, [$propertyId]);
    }
    
    public function getPairings($propertyId) {
        $sql = "SELECT p.* FROM properties p
                INNER JOIN property_related pr ON p.id = pr.related_property_id
                WHERE pr.property_id = ?
                ORDER BY pr.display_order";
        return $this->query($sql, [$propertyId]);
    }
    
    public function getImages($propertyId) {
        $sql = "SELECT * FROM property_images WHERE property_id = ? ORDER BY is_primary DESC, display_order";
        return $this->query($sql, [$propertyId]);
    }
}
