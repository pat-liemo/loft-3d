import { useState, useEffect } from 'react';
import PropertyCard from './PropertyCard';
import './PropertyCarousel.css';

function PropertyCarousel({ category, featured = false }) {
  const [properties, setProperties] = useState([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    const fetchProperties = async () => {
      try {
        // Build query parameters
        const params = new URLSearchParams();
        if (category) params.append('category', category);
        if (featured) params.append('featured', 'true');
        
        const response = await fetch(`/api/test-properties.php?${params.toString()}`);
        const result = await response.json();
        
        if (result.success) {
          setProperties(result.data);
        } else {
          console.error('API Error:', result.message);
          // Fallback to mock data
          setProperties([]);
        }
      } catch (error) {
        console.error('Error fetching properties:', error);
        // Fallback to mock data
        const mockProperties = [
          {
            id: 1,
            name: 'Modern Downtown Loft',
            image: 'https://images.unsplash.com/photo-1560448204-e02f11c3d0e2?w=400&h=300&fit=crop',
            avg_rating: 4.8,
            price: 2900,
            category: 'apartment'
          },
          {
            id: 2,
            name: 'Luxury Penthouse Suite',
            image: 'https://images.unsplash.com/photo-1545324418-cc1a3fa10c00?w=400&h=300&fit=crop',
            avg_rating: 4.6,
            price: 3200,
            category: 'luxury'
          }
        ];
        setProperties(mockProperties);
      } finally {
        setLoading(false);
      }
    };

    fetchProperties();
  }, [category, featured]);

  if (loading) {
    return (
      <div className="property-carousel">
        <div className="carousel-loading">Loading properties...</div>
      </div>
    );
  }

  if (properties.length === 0) {
    return null;
  }

  return (
    <div className="property-carousel">
      <div className="carousel-container">
        <div className="carousel-track">
          {properties.map((property) => (
            <div key={property.id} className="carousel-item">
              <PropertyCard property={property} />
            </div>
          ))}
        </div>
      </div>
    </div>
  );
}

export default PropertyCarousel;