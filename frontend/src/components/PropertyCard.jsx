import { useState } from 'react';
import { useNavigate } from 'react-router-dom';
import './PropertyCard.css';

function PropertyCard({ property }) {
  const [isFavorite, setIsFavorite] = useState(false);
  const navigate = useNavigate();

  const handleCardClick = () => {
    navigate(`/property/${property.id}`);
  };

  const handleFavoriteClick = (e) => {
    e.stopPropagation();
    setIsFavorite(!isFavorite);
  };

  // Handle different possible data structures from backend
  const getPropertyImage = () => {
    if (property.image) return property.image;
    if (property.images && property.images.length > 0) return property.images[0].image_path;
    return 'https://images.unsplash.com/photo-1560448204-e02f11c3d0e2?w=400&h=300&fit=crop';
  };

  const getPropertyName = () => {
    return property.name || property.title || 'Property';
  };

  const getPropertyRating = () => {
    return property.avg_rating || property.rating || 4.5;
  };

  const getPropertyPrice = () => {
    return property.price || property.rent || 2500;
  };

  return (
    <div className="property-card" onClick={handleCardClick}>
      <div className="card-image">
        <img src={getPropertyImage()} alt={getPropertyName()} />
        <div className="rating-badge">
          <i className="fas fa-star star-icon"></i>
          <span className="rating-value">{getPropertyRating()}</span>
        </div>
      </div>
      <div className="card-content">
        <h3 className="card-title">{getPropertyName()}</h3>
        <p className="card-location">
          <i className="fas fa-map-marker-alt"></i>
          <span>{property.address || 'Lavington, Nairobi'}</span>
        </p>
        <div className="card-footer">
          <div className="price">KES {getPropertyPrice()}</div>
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
}

export default PropertyCard;
