import { useState } from 'react';
import { useNavigate, useParams } from 'react-router-dom';
import './PropertyDetail.css';

function PropertyDetail() {
  const { id } = useParams();
  const navigate = useNavigate();
  const [isFavorite, setIsFavorite] = useState(false);
  const [showFullDescription, setShowFullDescription] = useState(false);

  const property = {
    id: 1,
    name: 'Luxury Downtown Penthouse',
    rating: 4.8,
    image: 'https://images.unsplash.com/photo-1545324418-cc1a3fa10c00?w=800&h=600&fit=crop',
    description: 'Experience luxury living in this stunning downtown penthouse featuring floor-to-ceiling windows, premium finishes, and breathtaking city views. This modern residence offers an open-concept design with high-end appliances and elegant touches throughout.',
    sqft: 2500,
    bedrooms: 3,
    features: [
      { name: 'City Views', icon: '🏙️' },
      { name: 'Modern Kitchen', icon: '🍳' },
      { name: 'Luxury Bath', icon: '🛁' },
      { name: 'Balcony', icon: '🌅' }
    ],
    amenities: ['Parking', 'Gym', 'Pool', 'Concierge', 'Rooftop'],
    related: [
      { id: 1, name: 'Similar Penthouse', image: 'https://images.unsplash.com/photo-1560448204-e02f11c3d0e2?w=200&h=150&fit=crop' },
      { id: 2, name: 'Downtown Loft', image: 'https://images.unsplash.com/photo-1502672260266-1c1ef2d93688?w=200&h=150&fit=crop' },
      { id: 3, name: 'Modern Condo', image: 'https://images.unsplash.com/photo-1564013799919-ab600027ffc6?w=200&h=150&fit=crop' }
    ]
  };

  return (
    <div className="property-detail">
      <div className="detail-hero">
        <img src={property.image} alt={property.name} className="hero-image" />
        <button className="back-btn" onClick={() => navigate(-1)}>
          ←
        </button>
        <button 
          className={`favorite-btn-detail ${isFavorite ? 'active' : ''}`}
          onClick={() => setIsFavorite(!isFavorite)}
        >
          {isFavorite ? '❤️' : '🤍'}
        </button>
      </div>

      <div className="detail-content">
        <div className="detail-header">
          <h1 className="detail-title">{property.name}</h1>
          <div className="rating-badge">
            <span className="star">⭐</span>
            <span className="rating-value">{property.rating}</span>
          </div>
        </div>

        <div className="detail-description">
          <p className={showFullDescription ? 'expanded' : 'collapsed'}>
            {property.description}
          </p>
          {!showFullDescription && (
            <button 
              className="read-more-btn"
              onClick={() => setShowFullDescription(true)}
            >
              Read more
            </button>
          )}
        </div>

        <div className="detail-meta">
          <div className="meta-item">
            <span className="meta-icon">📐</span>
            <span className="meta-value">{property.sqft} sqft</span>
          </div>
          <div className="meta-item">
            <span className="meta-icon">🛏️</span>
            <span className="meta-value">{property.bedrooms} bed</span>
          </div>
        </div>

        <div className="ingredients-section">
          <h2 className="section-title">Key Features</h2>
          <div className="ingredients-grid">
            {property.features.map((feature, index) => (
              <div key={index} className="ingredient-item">
                <div className="ingredient-icon">{feature.icon}</div>
                <div className="ingredient-name">{feature.name}</div>
              </div>
            ))}
          </div>
        </div>

        <div className="allergens-section">
          <h2 className="section-title">Amenities</h2>
          <div className="allergens-list">
            {property.amenities.map((amenity, index) => (
              <span key={index} className="allergen-tag">{amenity}</span>
            ))}
          </div>
        </div>

        <div className="pairings-section">
          <h2 className="section-title">Similar Properties</h2>
          <div className="pairings-scroll">
            {property.related.map((related) => (
              <div key={related.id} className="pairing-card">
                <img src={related.image} alt={related.name} />
                <button className="pairing-favorite">🤍</button>
              </div>
            ))}
          </div>
        </div>
      </div>
    </div>
  );
}

export default PropertyDetail;
