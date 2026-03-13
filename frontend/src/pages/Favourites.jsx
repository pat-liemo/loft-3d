import { useState, useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import './Favourites.css';

function Favourites() {
  const navigate = useNavigate();
  const [favourites, setFavourites] = useState([]);

  const handleRemoveFavourite = (propertyId) => {
    setFavourites(favourites.filter(fav => fav.id !== propertyId));
  };

  useEffect(() => {
    window.scrollTo(0, 0);
    // Mock favourites data - replace with actual API call
    setFavourites([
      {
        id: 1,
        name: 'Nova Palace',
        address: 'Westlands, Nairobi',
        image: 'https://images.unsplash.com/photo-1545324418-cc1a3fa10c00?w=400&h=300&fit=crop',
        avg_rating: 4.8,
        price: 53000000,
        type: 'Apartment'
      },
      {
        id: 2,
        name: 'Garden View Apartment',
        address: 'Karen, Nairobi',
        image: 'https://images.unsplash.com/photo-1560448204-e02f11c3d0e2?w=400&h=300&fit=crop',
        avg_rating: 4.6,
        price: 28000000,
        type: 'Apartment'
      },
      {
        id: 3,
        name: 'Luxury Villa',
        address: 'Runda, Nairobi',
        image: 'https://images.unsplash.com/photo-1613490493576-7fde63acd811?w=400&h=300&fit=crop',
        avg_rating: 4.9,
        price: 85000000,
        type: 'House'
      },
      {
        id: 4,
        name: 'Modern Townhouse',
        address: 'Lavington, Nairobi',
        image: 'https://images.unsplash.com/photo-1600596542815-ffad4c1539a9?w=400&h=300&fit=crop',
        avg_rating: 4.7,
        price: 45000000,
        type: 'House'
      },
      {
        id: 5,
        name: 'Commercial Plaza',
        address: 'CBD, Nairobi',
        image: 'https://images.unsplash.com/photo-1486406146926-c627a92ad1ab?w=400&h=300&fit=crop',
        avg_rating: 4.5,
        price: 120000000,
        type: 'Commercial'
      },
      {
        id: 6,
        name: 'Office Space',
        address: 'Upperhill, Nairobi',
        image: 'https://images.unsplash.com/photo-1497366216548-37526070297c?w=400&h=300&fit=crop',
        avg_rating: 4.4,
        price: 35000000,
        type: 'Commercial'
      }
    ]);
  }, []);

  // Group favourites by property type
  const groupedFavourites = favourites.reduce((acc, property) => {
    const type = property.type || 'Other';
    if (!acc[type]) {
      acc[type] = [];
    }
    acc[type].push(property);
    return acc;
  }, {});

  return (
    <div className="favourites-page">
      <div className="favourites-hero">
        <button className="favourites-back-btn" onClick={() => navigate(-1)}>
          <i className="fas fa-arrow-left"></i>
        </button>
        <h1 className="favourites-title">Favourites</h1>
      </div>

      <div className="favourites-content">
        {favourites.length > 0 ? (
          <div className="favourites-sections">
            {Object.entries(groupedFavourites).map(([type, properties]) => (
              <div key={type} className="favourites-section">
                <div className="favourites-section-header">
                  <h2 className="favourites-section-title">{type}</h2>
                  <span className="favourites-section-count">{properties.length} {properties.length === 1 ? 'property' : 'properties'}</span>
                </div>
                <div className="favourites-scroll-container">
                  <div className="favourites-scroll">
                    {properties.map((property) => (
                      <div 
                        key={property.id} 
                        className="favourites-card"
                        onClick={() => navigate(`/property/${property.id}`)}
                      >
                        <img 
                          src={property.image} 
                          alt={property.name}
                          className="favourites-card-image"
                        />
                        <div className="favourites-card-overlay">
                          <h3 className="favourites-card-name">{property.name}</h3>
                          <button 
                            className="favourites-heart-btn"
                            onClick={(e) => {
                              e.stopPropagation();
                              handleRemoveFavourite(property.id);
                            }}
                          >
                            <i className="fas fa-heart"></i>
                          </button>
                        </div>
                      </div>
                    ))}
                  </div>
                </div>
              </div>
            ))}
          </div>
        ) : (
          <div className="favourites-empty">
            <i className="fas fa-heart"></i>
            <h3>No Favourites Yet</h3>
            <p>Start adding properties to your favourites to see them here</p>
            <button className="favourites-browse-btn" onClick={() => navigate('/')}>
              Browse Properties
            </button>
          </div>
        )}
      </div>
    </div>
  );
}

export default Favourites;
