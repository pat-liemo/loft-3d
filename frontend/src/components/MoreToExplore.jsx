import { useState, useEffect } from 'react';
import PropertyCard from './PropertyCard';
import './MoreToExplore.css';

// Dummy data for properties
const dummyProperties = [
  {
    id: 1,
    name: 'Elegant City Apartment',
    address: 'Off James Gichuru Road, Lavington',
    image: 'https://images.unsplash.com/photo-1522708323590-d24dbb6b0267?w=400&h=300&fit=crop',
    avg_rating: 4.7,
    price: 3500,
    category: 'Apartments'
  },
  {
    id: 2,
    name: 'Cozy Suburban Home',
    address: 'Argwings Kodhek Road, Kilimani',
    image: 'https://images.unsplash.com/photo-1570129477492-45c003edd2be?w=400&h=300&fit=crop',
    avg_rating: 4.5,
    price: 4200,
    category: 'Houses'
  },
  {
    id: 3,
    name: 'Modern Studio Loft',
    address: 'Ngong Road, Kilimani',
    image: 'https://images.unsplash.com/photo-1502672260266-1c1ef2d93688?w=400&h=300&fit=crop',
    avg_rating: 4.3,
    price: 2100,
    category: 'Apartments'
  },
  {
    id: 4,
    name: 'Luxury Penthouse',
    address: 'Riverside Drive, Westlands',
    image: 'https://images.unsplash.com/photo-1545324418-cc1a3fa10c00?w=400&h=300&fit=crop',
    avg_rating: 4.9,
    price: 6500,
    category: 'Luxury'
  },
  {
    id: 5,
    name: 'Downtown Condo',
    address: 'Muthangari Drive, Lavington',
    image: 'https://images.unsplash.com/photo-1512917774080-9991f1c4c750?w=400&h=300&fit=crop',
    avg_rating: 4.4,
    price: 2800,
    category: 'Condos'
  },
  {
    id: 6,
    name: 'Beachfront Villa',
    address: 'Peponi Road, Westlands',
    image: 'https://images.unsplash.com/photo-1613490493576-7fde63acd811?w=400&h=300&fit=crop',
    avg_rating: 4.8,
    price: 7200,
    category: 'Luxury'
  },
  {
    id: 7,
    name: 'Garden View Apartment',
    address: 'Dennis Pritt Road, Kilimani',
    image: 'https://images.unsplash.com/photo-1560448204-e02f11c3d0e2?w=400&h=300&fit=crop',
    avg_rating: 4.6,
    price: 3200,
    category: 'Apartments'
  },
  {
    id: 8,
    name: 'Family House',
    address: 'Brookside Drive, Westlands',
    image: 'https://images.unsplash.com/photo-1564013799919-ab600027ffc6?w=400&h=300&fit=crop',
    avg_rating: 4.5,
    price: 4800,
    category: 'Houses'
  },
  {
    id: 9,
    name: 'Urban Loft Space',
    address: 'Wood Avenue, Kilimani',
    image: 'https://images.unsplash.com/photo-1484154218962-a197022b5858?w=400&h=300&fit=crop',
    avg_rating: 4.4,
    price: 2900,
    category: 'Condos'
  },
  {
    id: 10,
    name: 'Executive Suite',
    address: 'General Mathenge Road, Westlands',
    image: 'https://images.unsplash.com/photo-1582268611958-ebfd161ef9cf?w=400&h=300&fit=crop',
    avg_rating: 4.7,
    price: 5500,
    category: 'Luxury'
  },
  {
    id: 11,
    name: 'Riverside Apartment',
    address: 'Waiyaki Way, Westlands',
    image: 'https://images.unsplash.com/photo-1449824913935-59a10b8d2000?w=400&h=300&fit=crop',
    avg_rating: 4.6,
    price: 3800,
    category: 'Apartments'
  },
  {
    id: 12,
    name: 'Mountain View House',
    address: 'Red Hill Road, Limuru',
    image: 'https://images.unsplash.com/photo-1518780664697-55e3ad937233?w=400&h=300&fit=crop',
    avg_rating: 4.8,
    price: 5200,
    category: 'Houses'
  }
];

function MoreToExplore({ category }) {
  const [currentPage, setCurrentPage] = useState(1);
  const propertiesPerPage = 10;

  // Filter properties by category
  const filteredProperties = category && category !== 'Specials'
    ? dummyProperties.filter(prop => 
        prop.category.toLowerCase() === category.toLowerCase()
      )
    : dummyProperties;

  const indexOfLastProperty = currentPage * propertiesPerPage;
  const indexOfFirstProperty = indexOfLastProperty - propertiesPerPage;
  const currentProperties = filteredProperties.slice(indexOfFirstProperty, indexOfLastProperty);
  const totalPages = Math.ceil(filteredProperties.length / propertiesPerPage);

  // Reset to page 1 when category changes
  useEffect(() => {
    setCurrentPage(1);
  }, [category]);

  const handlePageChange = (pageNumber) => {
    setCurrentPage(pageNumber);
    window.scrollTo({ top: 0, behavior: 'smooth' });
  };

  const getCategoryTitle = () => {
    if (!category || category === 'Specials') {
      return 'More to Explore';
    }
    return `${category}`;
  };

  return (
    <div className="more-to-explore">
      <h2 className="explore-title">{getCategoryTitle()}</h2>
      
      <div className="explore-grid">
        {currentProperties.map((property) => (
          <div key={property.id} className="explore-item">
            <PropertyCard property={property} />
          </div>
        ))}
      </div>

      {currentProperties.length === 0 && (
        <div className="explore-loading">
          No properties found in this category.
        </div>
      )}

      {totalPages > 1 && (
        <div className="pagination">
          <button 
            className="pagination-btn"
            onClick={() => handlePageChange(currentPage - 1)}
            disabled={currentPage === 1}
          >
            <i className="fas fa-chevron-left"></i>
          </button>
          
          {[...Array(totalPages)].map((_, index) => (
            <button
              key={index + 1}
              className={`pagination-number ${currentPage === index + 1 ? 'active' : ''}`}
              onClick={() => handlePageChange(index + 1)}
            >
              {index + 1}
            </button>
          ))}
          
          <button 
            className="pagination-btn"
            onClick={() => handlePageChange(currentPage + 1)}
            disabled={currentPage === totalPages}
          >
            <i className="fas fa-chevron-right"></i>
          </button>
        </div>
      )}
    </div>
  );
}

export default MoreToExplore;