import { useState } from 'react';
import { useNavigate, useParams } from 'react-router-dom';
import './PropertyDetail.css';

function PropertyDetail() {
  const { id } = useParams();
  const navigate = useNavigate();
  const [isFavorite, setIsFavorite] = useState(false);
  const [showFullDescription, setShowFullDescription] = useState(false);
  const [showGalleryModal, setShowGalleryModal] = useState(false);
  const [showLightbox, setShowLightbox] = useState(false);
  const [lightboxImage, setLightboxImage] = useState('');
  const [lightboxIndex, setLightboxIndex] = useState(0);
  const [allImages, setAllImages] = useState([]);

  const openLightbox = (image, index, images) => {
    setLightboxImage(image);
    setLightboxIndex(index);
    setAllImages(images);
    setShowLightbox(true);
  };

  const closeLightbox = () => {
    setShowLightbox(false);
    setLightboxImage('');
    setLightboxIndex(0);
    setAllImages([]);
  };

  const nextImage = () => {
    const nextIndex = (lightboxIndex + 1) % allImages.length;
    setLightboxIndex(nextIndex);
    setLightboxImage(allImages[nextIndex]);
  };

  const prevImage = () => {
    const prevIndex = lightboxIndex === 0 ? allImages.length - 1 : lightboxIndex - 1;
    setLightboxIndex(prevIndex);
    setLightboxImage(allImages[prevIndex]);
  };

  const property = {
    name: 'Nova Palace',
    rating: 4.8,
    reviews: 12,
    image: 'https://images.unsplash.com/photo-1545324418-cc1a3fa10c00?w=800&h=600&fit=crop',
    description: 'Experience luxury living in this stunning downtown penthouse featuring floor-to-ceiling windows, premium finishes, and breathtaking city views. This modern residence offers an open-concept design with high-end appliances and elegant touches throughout.',
    sqft: 2500,
    bedrooms: 3,
    bathrooms: 2,
    features: [
      { name: 'City Views', icon: 'fa-city' },
      { name: 'Modern Kitchen', icon: 'fa-utensils' },
      { name: 'Luxury Bath', icon: 'fa-bath' },
      { name: 'Balcony', icon: 'fa-building' }
    ],
    amenities: ['Parking', 'Gym', 'Pool', 'Concierge', 'Rooftop'],
    agent: {
      name: 'Peter Parker',
      email: 'peterparker@mail.com',
      avatar: 'https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?w=100&h=100&fit=crop&crop=face',
      verified: true
    },
    gallery: [
      'https://images.unsplash.com/photo-1545324418-cc1a3fa10c00?w=400&h=300&fit=crop',
      'https://images.unsplash.com/photo-1560448204-e02f11c3d0e2?w=200&h=150&fit=crop',
      'https://images.unsplash.com/photo-1502672260266-1c1ef2d93688?w=200&h=150&fit=crop',
      'https://images.unsplash.com/photo-1564013799919-ab600027ffc6?w=200&h=150&fit=crop',
      'https://images.unsplash.com/photo-1571055107559-3e67626fa8be?w=200&h=150&fit=crop',
      'https://images.unsplash.com/photo-1586023492125-27b2c045efd7?w=200&h=150&fit=crop'
    ],
    galleryCategories: {
      bathroom: [
        'https://images.unsplash.com/photo-1620626011761-996317b8d101?w=300&h=200&fit=crop'
      ],
      livingRoom: [
        'https://images.unsplash.com/photo-1586023492125-27b2c045efd7?w=300&h=200&fit=crop'
      ],
      kitchen: [
        'https://images.unsplash.com/photo-1556909114-f6e7ad7d3136?w=300&h=200&fit=crop'
      ],
      additional: [
        'https://images.unsplash.com/photo-1560448204-e02f11c3d0e2?w=300&h=200&fit=crop',
        'https://images.unsplash.com/photo-1502672260266-1c1ef2d93688?w=300&h=200&fit=crop',
        'https://images.unsplash.com/photo-1564013799919-ab600027ffc6?w=300&h=200&fit=crop',
        'https://images.unsplash.com/photo-1571055107559-3e67626fa8be?w=300&h=200&fit=crop',
        'https://images.unsplash.com/photo-1545324418-cc1a3fa10c00?w=300&h=200&fit=crop',
        'https://images.unsplash.com/photo-1586023492125-27b2c045efd7?w=300&h=200&fit=crop',
        'https://images.unsplash.com/photo-1556909114-f6e7ad7d3136?w=300&h=200&fit=crop'
      ]
    },
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
        <div className="hero-overlay"></div>
        
        <button className="back-btn" onClick={() => navigate(-1)}>
          <i className="fas fa-arrow-left"></i>
        </button>
        
        <div className="hero-actions">
          <button 
            className={`favorite-btn-detail ${isFavorite ? 'active' : ''}`}
            onClick={() => setIsFavorite(!isFavorite)}
          >
            <i className={`${isFavorite ? 'fas' : 'far'} fa-heart`}></i>
          </button>
          <button className="share-btn">
            <i className="fas fa-share-alt"></i>
          </button>
        </div>
        
        <div className="hero-content">
          <h1 className="hero-title">{property.name}</h1>
          <div className="hero-rating">
            <i className="fas fa-star"></i>
            <i className="fas fa-star"></i>
            <i className="fas fa-star"></i>
            <i className="fas fa-star"></i>
            <i className="fas fa-star"></i>
          </div>
          
          <button className="play-btn">
            <div className="play-icon">
              <i className="fas fa-play"></i>
            </div>
            <span className="play-text">Explore 3D Space</span>
          </button>
        </div>
        
        <div className="hero-branding">
          <div className="powered-line">
            <i className="fas fa-cube"></i>
            <span>POWERED BY</span>
          </div>
          <div className="brand-line" style={{fontSize: '0.9rem', fontWeight: '600', letterSpacing: '0.1em'}}>
            <span className="brand-name">LOFT STUDIO</span>
          </div>
        </div>
      </div>

      <div className="detail-content">
        <div className="detail-header">
          <h1 className="detail-title">{property.name}</h1>
          <div className="rating-badge">
            <i className="fas fa-star"></i>
            <span className="rating-value">({property.reviews} reviews)</span>
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
            <i className="fas fa-ruler-combined"></i>
            <span className="meta-value">{property.sqft} sqft</span>
          </div>
          <div className="meta-item">
            <i className="fas fa-bed"></i>
            <span className="meta-value">{property.bedrooms} bed</span>
          </div>
          <div className="meta-item">
            <i className="fas fa-bath"></i>
            <span className="meta-value">{property.bathrooms} bath</span>
          </div>
        </div>

        <div className="agent-section">
          <h2 className="section-title">Agent</h2>
          <div className="agent-card">
            <img src={property.agent.avatar} alt={property.agent.name} className="agent-avatar" />
            <div className="agent-info">
              <div className="agent-name">
                {property.agent.name}
                {property.agent.verified && (
                  <img 
                    src="/ver.png" 
                    alt="Verified" 
                    style={{width: '16px', height: '16px', objectFit: 'contain'}}
                  />
                )}
              </div>
              <div className="agent-email">{property.agent.email}</div>
            </div>
            <div className="agent-actions">
              <button className="contact-btn whatsapp-btn">
                <i className="fab fa-whatsapp"></i>
              </button>
              <button className="contact-btn call-btn">
                <i className="fas fa-phone"></i>
              </button>
            </div>
          </div>
        </div>

        <div className="ingredients-section">
          <h2 className="section-title">Key Features</h2>
          <div className="amenities-grid">
            {property.features.map((feature, index) => (
              <button key={index} className="amenity-btn">
                <i className={`fas ${feature.icon}`}></i>
                <span>{feature.name}</span>
              </button>
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

        <div className="gallery-section">
          <div className="gallery-header">
            <h2 className="section-title">Gallery</h2>
          </div>
          <div className="gallery-grid" style={{display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '0.4rem', height: '180px'}}>
            <div className="gallery-main" onClick={() => openLightbox(property.gallery[0], 0, property.gallery)} style={{gridRow: 'span 2'}}>
              <img src={property.gallery[0]} alt="Property" style={{width: '100%', height: '185px', objectFit: 'cover', borderRadius: '20px'}} />
            </div>
            <div className="gallery-thumbnails" style={{display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '0.6rem'}}>
              {property.gallery.slice(1, 5).map((image, index) => (
                <div key={index} className="gallery-thumb" onClick={index === 3 ? () => setShowGalleryModal(true) : () => openLightbox(image, index + 1, property.gallery)} style={{position: 'relative', borderRadius: '12px', overflow: 'hidden', cursor: 'pointer', height: '87px'}}>
                  <img src={image} alt={`Property ${index + 2}`} style={{width: '100%', height: '100%', objectFit: 'cover'}} />
                  {index === 3 && (
                    <div className="more-overlay" style={{position: 'absolute', top: 0, left: 0, right: 0, bottom: 0, background: 'rgba(0, 0, 0, 0.7)', display: 'flex', alignItems: 'center', justifyContent: 'center', color: 'white', fontSize: '0.9rem', fontWeight: '600'}}>
                      <span>+7 more</span>
                    </div>
                  )}
                </div>
              ))}
            </div>
          </div>
        </div>

        <button 
          className="download-floor-plan-btn" 
          disabled
          style={{
            width: '100%',
            display: 'flex',
            alignItems: 'center',
            justifyContent: 'center',
            gap: '0.5rem',
            background: '#ffd700',
            color: '#333',
            border: 'none',
            padding: '0.75rem 1rem',
            borderRadius: '8px',
            fontSize: '0.85rem',
            fontWeight: '600',
            marginBottom: '1.5rem',
            opacity: '0.6',
            cursor: 'not-allowed'
          }}
        >
          <i className="fas fa-download"></i>
          <span>Download Floor Plan</span>
        </button>

        <h6 className="section-title" style={{color: '000', marginBottom: '1rem', marginTop: '1rem'}}>Location</h6>
          <div 
            className="location-info"
            style={{
              display: 'flex',
              alignItems: 'flex-start',
              gap: '1rem',
              marginBottom: '1rem'
            }}
          >
            <div 
              style={{
                width: '2.5rem',
                height: '2.5rem',
                background: 'transparent',
                borderRadius: '50%',
                display: 'flex',
                alignItems: 'center',
                justifyContent: 'center',
                flexShrink: 0
              }}
            >
            <i className="fas fa-map-marker-alt" style={{color: '#333', fontSize: '2rem'}}></i>
            </div>
            <div>
              <div style={{color: '#999', fontSize: '0.9rem', lineHeight: '1.4'}}>
                Koitobos Road, off Karen Road
              </div>
              <div style={{color: '#999', fontSize: '0.9rem', lineHeight: '1.4'}}>
                Karen, Nairobi
              </div>
            </div>
          </div>

        <div className="location-section" style={{background: '#1a1a1a', padding: '1.5rem', borderRadius: '20px', marginBottom: '1.5rem'}}>
          
          <div 
            className="map-container"
            style={{
              position: 'relative',
              width: '100%',
              height: '270px',
              borderRadius: '20px',
              overflow: 'hidden'
            }}
          >
            <img 
              src="https://via.placeholder.com/400x200/f0f0f0/999999?text=Map+View" 
              alt="Map" 
              style={{
                width: '100%',
                height: '100%',
                objectFit: 'cover'
              }}
            />
            <button 
              style={{
                position: 'absolute',
                top: '1rem',
                left: '1rem',
                background: 'white',
                border: 'none',
                padding: '0.5rem 1rem',
                borderRadius: '6px',
                fontSize: '0.8rem',
                color: '#007bff',
                fontWeight: '500',
                cursor: 'pointer',
                display: 'flex',
                alignItems: 'center',
                gap: '0.3rem'
              }}
            >
              Open in Maps
              <i className="fas fa-external-link-alt" style={{fontSize: '0.7rem'}}></i>
            </button>
          </div>
        </div>

        <div className="reviews-section" style={{background: 'white', marginBottom: '1.5rem', marginTop: '1.5rem', border: 'none'}}>
          <div style={{display: 'flex', alignItems: 'center', gap: '0.5rem', marginBottom: '1.5rem'}}>
            <i className="fas fa-star" style={{color: '#ffa500', fontSize: '1.1rem'}}></i>
            <h2 className="section-title" style={{color: '#333', margin: 0}}>({property.reviews} reviews)</h2>
          </div>

          <div className="reviews-list">
            <div className="review-item" style={{marginBottom: '1.5rem', paddingBottom: '1.5rem'}}>
              <div style={{display: 'flex', alignItems: 'center', gap: '0.75rem', marginBottom: '0.75rem'}}>
                <img 
                  src="https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?w=50&h=50&fit=crop&crop=face" 
                  alt="Ted Jatang" 
                  style={{width: '2.5rem', height: '2.5rem', borderRadius: '50%', objectFit: 'cover'}}
                />
                <div>
                  <div style={{color: '#333', fontSize: '0.9rem', fontWeight: '600'}}>Ted Jatang</div>
                </div>
              </div>
              <p style={{color: '#aaa', fontSize: '0.85rem', lineHeight: '1.5', margin: '0 0 0.75rem 0'}}>
                The perfect work-and-relax spot. I stayed here for a month while on a remote work trip. The internet was strong enough for Zoom calls, and the ambience of the place made it easy to stay focused. After work, I'd walk down to the beach or chill in the garden. One of the best stays I've had in Kenya.
              </p>
              <div style={{display: 'flex', alignItems: 'center', justifyContent: 'space-between'}}>
                <div style={{display: 'flex', alignItems: 'center', gap: '0.3rem'}}>
                  <i className="far fa-heart" style={{color: '#ffd700', fontSize: '0.9rem'}}></i>
                  <span style={{color: '#ffd700', fontSize: '0.85rem'}}>1</span>
                </div>
                <span style={{color: '#666', fontSize: '0.75rem'}}>Fri Nov 21 2025</span>
              </div>
            </div>

            <div className="review-item" style={{marginBottom: '1.5rem', paddingBottom: '1.5rem'}}>
              <div style={{display: 'flex', alignItems: 'center', gap: '0.75rem', marginBottom: '0.75rem'}}>
                <img 
                  src="https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?w=50&h=50&fit=crop&crop=face" 
                  alt="Ted Jatang" 
                  style={{width: '2.5rem', height: '2.5rem', borderRadius: '50%', objectFit: 'cover'}}
                />
                <div>
                  <div style={{color: '#333', fontSize: '0.9rem', fontWeight: '600'}}>Ted Jatang</div>
                </div>
              </div>
              <p style={{color: '#aaa', fontSize: '0.85rem', lineHeight: '1.5', margin: '0 0 0.75rem 0'}}>
                Average stay, room for improvement. The apartment looks nice and the location is great, but I had some issues with cleanliness when I arrived. The host did fix things after I contacted them, but it delayed my settling in. If maintenance is improved, it'll be a much better experience.
              </p>
              <div style={{display: 'flex', alignItems: 'center', justifyContent: 'space-between'}}>
                <div style={{display: 'flex', alignItems: 'center', gap: '0.3rem'}}>
                  <i className="far fa-heart" style={{color: '#ffd700', fontSize: '0.9rem'}}></i>
                  <span style={{color: '#ffd700', fontSize: '0.85rem'}}>1</span>
                </div>
                <span style={{color: '#666', fontSize: '0.75rem'}}>Fri Nov 21 2025</span>
              </div>
            </div>

            <div className="review-item" style={{marginBottom: '1.5rem'}}>
              <div style={{display: 'flex', alignItems: 'center', gap: '0.75rem', marginBottom: '0.75rem'}}>
                <img 
                  src="https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?w=50&h=50&fit=crop&crop=face" 
                  alt="Ted Jatang" 
                  style={{width: '2.5rem', height: '2.5rem', borderRadius: '50%', objectFit: 'cover'}}
                />
                <div>
                  <div style={{color: '#333', fontSize: '0.9rem', fontWeight: '600'}}>Ted Jatang</div>
                </div>
              </div>
              <p style={{color: '#aaa', fontSize: '0.85rem', lineHeight: '1.5', margin: '0 0 0.75rem 0'}}>
                wow
              </p>
              <div style={{display: 'flex', alignItems: 'center', justifyContent: 'space-between'}}>
                <div style={{display: 'flex', alignItems: 'center', gap: '0.3rem'}}>
                  <i className="far fa-heart" style={{color: '#666', fontSize: '0.9rem'}}></i>
                </div>
                <span style={{color: '#666', fontSize: '0.75rem'}}>Fri Nov 21 2025</span>
              </div>
            </div>
          </div>

          <button 
            style={{
              background: 'transparent',
              border: 'none',
              color: '#000',
              fontSize: '0.7rem',
              fontWeight: '800',
              cursor: 'pointer',
              padding: '0.5rem 0',
              textTransform: 'uppercase',
              letterSpacing: '0.05em'
            }}
          >
            See more
          </button>

          <div style={{marginTop: '1rem', marginBottom: '1rem', borderTop: '1px solid #e0e0e0'}}>
            <h3 style={{color: '#333', fontSize: '0.95rem', fontWeight: '600', margin: '2rem 0 1rem 0'}}>Leave a comment</h3>
            <div style={{display: 'flex', alignItems: 'center', gap: '0.75rem'}}>
              <img 
                src="/images/male_cv.jpg" 
                alt="User" 
                onError={(e) => e.target.src = '/images/pfp-default.png'}
                style={{width: '2.5rem', height: '2.5rem', borderRadius: '50%', objectFit: 'cover'}}
              />
              <div style={{flex: 1, position: 'relative'}}>
                <input 
                  type="text" 
                  placeholder="Add a comment..." 
                  style={{
                    width: '100%',
                    background: 'transparent',
                    border: '1px solid #ddd',
                    borderRadius: '20px',
                    padding: '0.75rem 3rem 0.75rem 1rem',
                    color: '#aaa',
                    fontSize: '0.85rem'
                  }}
                />
                <button 
                  style={{
                    position: 'absolute',
                    right: '0.75rem',
                    top: '50%',
                    transform: 'translateY(-50%)',
                    background: 'transparent',
                    border: 'none',
                    color: '#007bff',
                    cursor: 'pointer',
                    fontSize: '1rem'
                  }}
                >
                  <i className="fas fa-arrow-up"></i>
                </button>
              </div>
            </div>
          </div>
        </div>

        <div className="verified-section" style={{background: 'transparent', padding: '2rem 1.5rem', borderRadius: '20px', margin: '1.5rem 0rem', marginTops: '1.5rem', textAlign: 'center', border: '1px solid #ddd'}}>
          <img 
            src="/verified-removebg.png" 
            alt="Verified" 
            style={{width: '250px', height: '160px', margin: '0 auto', objectFit: 'cover', filter: 'drop-shadow(0 0 10px rgba(0, 0, 0, 0.2))'}}
          />
          <h2 style={{color: '#333', fontSize: '1.1rem', fontWeight: '600', marginBottom: '0.5rem'}}>Authenticity Guaranteed</h2>
          <p style={{color: '#666', fontSize: '0.85rem', margin: 0}}>This listing has been scanned & verified by Loft</p>
        </div>

        {/* Gallery Modal */}
        {showGalleryModal && (
          <>
            <div 
              className="gallery-overlay" 
              onClick={() => setShowGalleryModal(false)}
              style={{
                position: 'fixed',
                top: 0,
                left: 0,
                right: 0,
                bottom: 0,
                background: 'rgba(0, 0, 0, 0.5)',
                zIndex: 99999
              }}
            ></div>
            <div 
              className="gallery-modal"
              style={{
                position: 'fixed',
                bottom: 0,
                left: 0,
                right: 0,
                background: 'white',
                borderRadius: '20px 20px 0 0',
                zIndex: 100000,
                maxHeight: '90vh',
                display: 'flex',
                flexDirection: 'column',
                transform: 'translateY(0)',
                transition: 'transform 0.3s ease'
              }}
            >
              <div 
                className="gallery-modal-header"
                style={{
                  display: 'flex',
                  justifyContent: 'space-between',
                  alignItems: 'center',
                  padding: '1rem 1.25rem',
                  borderBottom: '1px solid #f0f0f0'
                }}
              >
                <h3 style={{fontSize: '1.05rem', fontWeight: '600', color: '#333', margin: 0}}>Photo Gallery</h3>
                <button 
                  className="close-gallery-btn" 
                  onClick={() => setShowGalleryModal(false)}
                  style={{
                    background: 'rgba(0, 0, 0, 0.03)',
                    border: 'none',
                    fontSize: '0.7rem',
                    color: '#666',
                    cursor: 'pointer',
                    padding: 0,
                    width: '30px',
                    height: '30px',
                    display: 'flex',
                    alignItems: 'center',
                    justifyContent: 'center',
                    borderRadius: '50%'
                  }}
                >
                  <i className="fas fa-times"></i>
                </button>
              </div>
              
              <div 
                className="gallery-modal-content"
                style={{
                  flex: 1,
                  overflowY: 'auto',
                  padding: '1rem'
                }}
              >
                <div className="gallery-category" style={{marginBottom: '1.5rem'}}>
                  <div 
                    className="category-header"
                    style={{
                      display: 'flex',
                      alignItems: 'center',
                      gap: '0.75rem',
                      marginBottom: '0.75rem'
                    }}
                  >
                    <i className="fas fa-bath" style={{fontSize: '1rem', color: '#666'}}></i>
                    <span style={{fontSize: '0.85rem', fontWeight: '500', color: '#999', flex: 1}}>Bathroom</span>
                    <span style={{fontSize: '0.8rem', color: '#999'}}>1 photo</span>
                  </div>
                  <div 
                    className="category-carousel"
                    style={{
                      display: 'flex',
                      gap: '0.65rem',
                      overflowX: 'auto',
                      paddingBottom: '0.5rem'
                    }}
                  >
                    <img 
                      src={property.galleryCategories.bathroom[0]} 
                      alt="Bathroom" 
                      onClick={() => openLightbox(property.galleryCategories.bathroom[0], 0, property.galleryCategories.bathroom)}
                      style={{
                        minWidth: '120px',
                        height: '80px',
                        objectFit: 'cover',
                        borderRadius: '8px',
                        cursor: 'pointer',
                        border: '1px solid #e0e0e0'
                      }}
                    />
                  </div>
                </div>

                <div className="gallery-category">
                  <div 
                    className="category-header"
                    style={{
                      display: 'flex',
                      alignItems: 'center',
                      gap: '0.75rem',
                      marginBottom: '0.75rem'
                    }}
                  >
                    <i className="fas fa-images" style={{fontSize: '1rem', color: '#666'}}></i>
                    <span style={{fontSize: '0.85rem', fontWeight: '500', color: '#999', flex: 1}}>Additional Photos</span>
                    <span style={{fontSize: '0.8rem', color: '#999'}}>7 photos</span>
                  </div>
                  <div 
                    className="category-carousel"
                    style={{
                      display: 'flex',
                      gap: '0.65rem',
                      overflowX: 'auto',
                      paddingBottom: '0.5rem'
                    }}
                  >
                    {property.galleryCategories.additional.map((image, index) => (
                      <img 
                        key={index} 
                        src={image} 
                        alt="Additional" 
                        onClick={() => openLightbox(image, index, property.galleryCategories.additional)}
                        style={{
                          maxWidth: '140px',
                          height: '130px',
                          objectFit: 'cover',
                          borderRadius: '8px',
                          cursor: 'pointer',
                          border: '1px solid #e0e0e0'
                        }}
                      />
                    ))}
                  </div>
                </div>
              </div>
            </div>
          </>
        )}

        {/* Lightbox */}
        {showLightbox && (
          <div 
            style={{
              position: 'fixed',
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              background: 'rgba(0, 0, 0, 0.9)',
              zIndex: 200000,
              display: 'flex',
              alignItems: 'center',
              justifyContent: 'center'
            }}
            onClick={closeLightbox}
          >
            <button 
              onClick={closeLightbox}
              style={{
                position: 'absolute',
                top: '1rem',
                right: '1rem',
                background: 'rgba(0, 0, 0, 0.3)',
                border: 'none',
                color: 'white',
                fontSize: '0.9rem',
                width: '2rem',
                height: '2rem',
                borderRadius: '50%',
                cursor: 'pointer',
                zIndex: 200001,
                display: 'flex',
                alignItems: 'center',
                justifyContent: 'center'
              }}
            >
              <i className="fas fa-times"></i>
            </button>
            
            <div 
              style={{
                position: 'absolute',
                bottom: '1rem',
                left: '50%',
                transform: 'translateX(-50%)',
                color: 'white',
                fontSize: '0.8rem',
                zIndex: 200001,
                background: 'rgba(0, 0, 0, 0.4)',
                padding: '0.3rem 0.8rem',
                borderRadius: '20px',
                fontWeight: '500'
              }}
            >
              {lightboxIndex + 1} / {allImages.length}
            </div>

            {allImages.length > 1 && (
              <>
                <button 
                  onClick={(e) => {e.stopPropagation(); prevImage();}}
                  style={{
                    position: 'absolute',
                    left: '1rem',
                    top: '50%',
                    transform: 'translateY(-50%)',
                    background: 'rgba(0, 0, 0, 0.3)',
                    border: 'none',
                    color: 'white',
                    fontSize: '1rem',
                    width: '2.5rem',
                    height: '2.5rem',
                    borderRadius: '50%',
                    cursor: 'pointer',
                    zIndex: 200001,
                    display: 'flex',
                    alignItems: 'center',
                    justifyContent: 'center'
                  }}
                >
                  <i className="fas fa-chevron-left"></i>
                </button>
                
                <button 
                  onClick={(e) => {e.stopPropagation(); nextImage();}}
                  style={{
                    position: 'absolute',
                    right: '1rem',
                    top: '50%',
                    transform: 'translateY(-50%)',
                    background: 'rgba(0, 0, 0, 0.3)',
                    border: 'none',
                    color: 'white',
                    fontSize: '1rem',
                    width: '2.5rem',
                    height: '2.5rem',
                    borderRadius: '50%',
                    cursor: 'pointer',
                    zIndex: 200001,
                    display: 'flex',
                    alignItems: 'center',
                    justifyContent: 'center'
                  }}
                >
                  <i className="fas fa-chevron-right"></i>
                </button>
              </>
            )}

            <img 
              src={lightboxImage} 
              alt="Lightbox" 
              onClick={(e) => e.stopPropagation()}
              style={{
                width: '100vw',
                height: '100vh',
                objectFit: 'contain',
                imageRendering: 'crisp-edges'
              }}
            />
          </div>
        )}

        <div className="pairings-section">
          <div style={{textAlign: 'center', marginBottom: '1.5rem'}}>
            <h2 style={{color: '#333', fontSize: '1.1rem', fontWeight: '600', marginBottom: '0.5rem'}}>You May Also Like</h2>
            <p style={{color: '#666', fontSize: '0.8rem', margin: 0}}>Explore similar properties in our collection.</p>
          </div>          

          <div className="pairings-scroll" style={{display: 'flex', gap: '1rem', overflowX: 'auto', scrollbarWidth: 'none', paddingBottom: '0.5rem'}}>
            {property.related.map((related) => (
              <div key={related.id} style={{position: 'relative', minWidth: '50px', width: '170px', height: '170px', borderRadius: '20px', overflow: 'hidden', flexShrink: 0}}>
                <img src={related.image} alt={related.name} style={{width: '100%', height: '100%', objectFit: 'cover'}} />
                <div style={{position: 'absolute', top: 0, left: 0, right: 0, bottom: 0, background: 'linear-gradient(to bottom, rgba(0,0,0,0), rgba(0,0,0,0.7))'}}></div>
                <div style={{position: 'absolute', bottom: '1rem', left: '1rem', right: '1rem', color: 'white'}}>
                  <h3 style={{fontSize: '1rem', fontWeight: '900', margin: '0 0 0.25rem 0'}}>{related.name}</h3>
                  <p style={{fontSize: '0.8rem', fontWeight: '900', margin: 0, color: '#ffd700'}}>KES 53M</p>
                </div>
              </div>
            ))}
          </div>
        </div>
      </div>

      {/* Floating Booking Bar */}
      <div className="floating-booking-bar" style={{borderTopLeftRadius: '15px', borderTopRightRadius: '15px', padding: '1rem 0.75rem',}}>
        <div className="booking-price">
          <span style={{color: '#ddd', fontSize: '0.8rem'}}>Price</span>
          <div style={{color: 'white', fontSize: '1.2rem', fontWeight: '700'}}>KES 53M</div>
        </div>
        <button 
          className="book-viewing-btn"
          style={{
            background: '#ffd700',
            color: '#000',
            border: 'none',
            padding: '0.75rem 1.5rem',
            borderRadius: '5px',
            fontSize: '0.8rem',
            fontWeight: '600',
            cursor: 'pointer',
            textTransform: 'uppercase',
            letterSpacing: '0.5px'
          }}
        >
          Book a Viewing
        </button>
      </div>
    </div>
  );
}

export default PropertyDetail;
