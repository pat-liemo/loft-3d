import { useState, useEffect } from 'react';
import PropertyCard from './PropertyCard';
import './AgentPropertyGrid.css';

function AgentPropertyGrid({ properties, propertyTypes, activeFilter, onFilterChange, agent }) {
  const [currentPage, setCurrentPage] = useState(1);
  const propertiesPerPage = 10;

  // Filter properties based on active filter
  const filteredProperties = activeFilter === 'all' 
    ? properties 
    : properties.filter(p => p.type === activeFilter);

  const indexOfLastProperty = currentPage * propertiesPerPage;
  const indexOfFirstProperty = indexOfLastProperty - propertiesPerPage;
  const currentProperties = filteredProperties.slice(indexOfFirstProperty, indexOfLastProperty);
  const totalPages = Math.ceil(filteredProperties.length / propertiesPerPage);

  // Reset to page 1 when filter changes
  useEffect(() => {
    setCurrentPage(1);
  }, [activeFilter]);

  const handlePageChange = (pageNumber) => {
    setCurrentPage(pageNumber);
    window.scrollTo({ top: 0, behavior: 'smooth' });
  };

  const handleFilterChange = (filterKey) => {
    onFilterChange(filterKey);
  };

  // Custom PropertyCard component for agent properties to avoid double KES
  const AgentPropertyCard = ({ property }) => {
    const [isFavorite, setIsFavorite] = useState(false);
    
    const handleFavoriteClick = (e) => {
      e.stopPropagation();
      setIsFavorite(!isFavorite);
    };

    return (
      <div className="property-card">
        <div className="card-image">
          <img src={property.image} alt={property.name} />
          <div className="rating-badge">
            <i className="fas fa-star star-icon"></i>
            <span className="rating-value">4.5</span>
          </div>
        </div>
        <div className="card-content">
          <h3 className="card-title">{property.name}</h3>
          <p className="card-location">
            <i className="fas fa-map-marker-alt"></i>
            <span>{property.location}</span>
          </p>
          <div className="card-footer">
            <div className="price">{property.price}</div>
            <button 
              className={`favorite-btn-footer ${isFavorite ? 'active' : ''}`}
              onClick={handleFavoriteClick}
            >
              <i className={isFavorite ? 'fas fa-heart' : 'far fa-heart'}></i>
            </button>
          </div>
        </div>
      </div>
    );
  };

  return (
    <div className="agent-properties-section">
      <h2 className="agent-explore-title">Properties by {agent.name}</h2>
      
      <div className="agent-property-filters">
        {propertyTypes.map((type) => (
          <button
            key={type.key}
            className={`agent-filter-btn ${activeFilter === type.key ? 'active' : ''}`}
            onClick={() => handleFilterChange(type.key)}
          >
            {type.label}
            <span className="agent-filter-count">({type.count})</span>
          </button>
        ))}
      </div>

      <div className="agent-explore-grid">
        {currentProperties.map((property) => (
          <div key={property.id} className="agent-explore-item">
            <AgentPropertyCard property={property} />
          </div>
        ))}
      </div>

      {currentProperties.length === 0 && (
        <div className="agent-explore-loading">
          No properties found in this category.
        </div>
      )}

      {totalPages > 1 && (
        <div className="agent-pagination">
          <button 
            className="agent-pagination-btn"
            onClick={() => handlePageChange(currentPage - 1)}
            disabled={currentPage === 1}
          >
            <i className="fas fa-chevron-left"></i>
          </button>
          
          {[...Array(totalPages)].map((_, index) => (
            <button
              key={index + 1}
              className={`agent-pagination-number ${currentPage === index + 1 ? 'active' : ''}`}
              onClick={() => handlePageChange(index + 1)}
            >
              {index + 1}
            </button>
          ))}
          
          <button 
            className="agent-pagination-btn"
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

export default AgentPropertyGrid;