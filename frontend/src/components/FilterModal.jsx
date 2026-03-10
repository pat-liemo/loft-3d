import { useState } from 'react';
import './FilterModal.css';

function FilterModal({ isOpen, onClose, onApplyFilters }) {
  const [filters, setFilters] = useState({
    listingType: '',
    location: '',
    propertyType: '',
    priceMin: '',
    priceMax: '',
    priceRange: '',
    bedrooms: '',
    bathrooms: '',
    size: '',
    amenities: [],
    verifiedAgentsOnly: false,
    featuredOnly: false,
    minRating: ''
  });

  const handleChange = (field, value) => {
    setFilters(prev => ({ ...prev, [field]: value }));
  };

  const toggleAmenity = (amenity) => {
    setFilters(prev => ({
      ...prev,
      amenities: prev.amenities.includes(amenity)
        ? prev.amenities.filter(a => a !== amenity)
        : [...prev.amenities, amenity]
    }));
  };

  const handleApply = () => {
    onApplyFilters(filters);
    onClose();
  };

  const handleReset = () => {
    setFilters({
      listingType: '',
      location: '',
      propertyType: '',
      priceMin: '',
      priceMax: '',
      priceRange: '',
      bedrooms: '',
      bathrooms: '',
      size: '',
      amenities: [],
      verifiedAgentsOnly: false,
      featuredOnly: false,
      minRating: ''
    });
  };

  return (
    <>
      <div className={`filter-overlay ${isOpen ? 'active' : ''}`} onClick={onClose}></div>
      <div className={`filter-modal ${isOpen ? 'open' : ''}`}>
        <div className="filter-header">
          <h3>Filters</h3>
          <button className="close-btn" onClick={onClose}>
            <i className="fas fa-times"></i>
          </button>
        </div>

        <div className="filter-content">
          {/* Listing Type */}
          <div className="filter-group">
            <label>Listing Type</label>
            <div className="button-group two-col">
              <button
                className={`option-btn ${filters.listingType === 'sale' ? 'active' : ''}`}
                onClick={() => handleChange('listingType', filters.listingType === 'sale' ? '' : 'sale')}
              >
                FOR SALE
              </button>
              <button
                className={`option-btn ${filters.listingType === 'rent' ? 'active' : ''}`}
                onClick={() => handleChange('listingType', filters.listingType === 'rent' ? '' : 'rent')}
              >
                FOR RENT
              </button>
            </div>
          </div>

          {/* Location */}
          <div className="filter-group">
            <label>Location</label>
            <input 
              type="text" 
              placeholder="e.g., Nairobi, Westlands, Karen"
              value={filters.location}
              onChange={(e) => handleChange('location', e.target.value)}
            />
          </div>

          {/* Property Type */}
          <div className="filter-group">
            <label>Property Type</label>
            <select 
              value={filters.propertyType} 
              onChange={(e) => handleChange('propertyType', e.target.value)}
            >
              <option value="">Any</option>
              <option value="Apartments">Apartments</option>
              <option value="Houses">Houses</option>
              <option value="Condos">Condos</option>
              <option value="Luxury">Luxury</option>
            </select>
          </div>

          {/* Price Range */}
          <div className="filter-group">
            <label>Price Range (KES)</label>
            <div className="price-inputs">
              <input 
                type="text" 
                placeholder="Min" 
                value={filters.priceMin}
                onChange={(e) => handleChange('priceMin', e.target.value)}
              />
              <input 
                type="text" 
                placeholder="Max" 
                value={filters.priceMax}
                onChange={(e) => handleChange('priceMax', e.target.value)}
              />
            </div>
            <div className="button-group price-ranges">
              {['UNDER 5M', '5M - 15M', '15M - 30M', '30M+'].map(range => (
                <button
                  key={range}
                  className={`option-btn ${filters.priceRange === range ? 'active' : ''}`}
                  onClick={() => handleChange('priceRange', filters.priceRange === range ? '' : range)}
                >
                  {range}
                </button>
              ))}
            </div>
          </div>

          {/* Bedrooms */}
          <div className="filter-group">
            <label>Bedrooms</label>
            <div className="button-group">
              {['1', '2', '3', '4', '5+'].map(num => (
                <button
                  key={num}
                  className={`option-btn ${filters.bedrooms === num ? 'active' : ''}`}
                  onClick={() => handleChange('bedrooms', filters.bedrooms === num ? '' : num)}
                >
                  {num}
                </button>
              ))}
            </div>
          </div>

          {/* Bathrooms */}
          <div className="filter-group">
            <label>Bathrooms</label>
            <div className="button-group">
              {['1', '2', '3', '4+'].map(num => (
                <button
                  key={num}
                  className={`option-btn ${filters.bathrooms === num ? 'active' : ''}`}
                  onClick={() => handleChange('bathrooms', filters.bathrooms === num ? '' : num)}
                >
                  {num}
                </button>
              ))}
            </div>
          </div>

          {/* Size */}
          <div className="filter-group">
            <label>Size (sq ft)</label>
            <div className="price-inputs">
              <input 
                type="text" 
                placeholder="Min" 
                value={filters.size}
                onChange={(e) => handleChange('size', e.target.value)}
              />
              <input 
                type="text" 
                placeholder="Max" 
              />
            </div>
            <div className="button-group size-ranges">
              {['UNDER 1000', '1000-2500', '2500-5000', '5000+'].map(range => (
                <button
                  key={range}
                  className={`option-btn ${filters.size === range ? 'active' : ''}`}
                  onClick={() => handleChange('size', filters.size === range ? '' : range)}
                >
                  {range}
                </button>
              ))}
            </div>
          </div>

          {/* Facilities & Amenities */}
          <div className="filter-group">
            <label>Facilities & Amenities</label>
            <div className="amenities-grid">
              {[
                { icon: 'fa-swimming-pool', label: 'POOL' },
                { icon: 'fa-parking', label: 'PARKING' },
                { icon: 'fa-dumbbell', label: 'GYM' },
                { icon: 'fa-tree', label: 'GARDEN' },
                { icon: 'fa-shield-alt', label: 'SECURITY' },
                { icon: 'fa-wind', label: 'AC' },
                { icon: 'fa-paw', label: 'PET FRIENDLY' },
                { icon: 'fa-couch', label: 'FURNISHED' },
                { icon: 'fa-building', label: 'ELEVATOR' },
                { icon: 'fa-wifi', label: 'WIFI' }
              ].map(amenity => (
                <button
                  key={amenity.label}
                  className={`amenity-btn ${filters.amenities.includes(amenity.label) ? 'active' : ''}`}
                  onClick={() => toggleAmenity(amenity.label)}
                >
                  <i className={`fas ${amenity.icon}`}></i>
                  <span>{amenity.label}</span>
                </button>
              ))}
            </div>
          </div>

          {/* Agent Verification */}
          <div className="filter-group">
            <label>Agent Verification</label>
            <button
              className={`verification-btn ${filters.verifiedAgentsOnly ? 'active' : ''}`}
              onClick={() => handleChange('verifiedAgentsOnly', !filters.verifiedAgentsOnly)}
            >
              <i className="fas fa-check-circle"></i>
              <span>VERIFIED AGENTS ONLY</span>
            </button>
          </div>

          {/* Featured Properties */}
          <div className="filter-group">
            <button
              className={`featured-btn ${filters.featuredOnly ? 'active' : ''}`}
              onClick={() => handleChange('featuredOnly', !filters.featuredOnly)}
            >
              <i className="fas fa-star"></i>
              <span>Featured Properties Only</span>
            </button>
          </div>

          {/* Minimum Rating */}
          <div className="filter-group">
            <label>Minimum Rating</label>
            <div className="button-group rating-group">
              {['3+', '4+', '4.5+'].map(rating => (
                <button
                  key={rating}
                  className={`option-btn rating-btn ${filters.minRating === rating ? 'active' : ''}`}
                  onClick={() => handleChange('minRating', filters.minRating === rating ? '' : rating)}
                >
                  {rating} <i className="fas fa-star"></i>
                </button>
              ))}
            </div>
          </div>
        </div>

        <div className="filter-footer">
          <button className="apply-btn" onClick={handleApply}>
            Apply Filters
          </button>
        </div>
      </div>
    </>
  );
}

export default FilterModal;
