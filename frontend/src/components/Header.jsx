import { useState } from 'react';
import HamburgerMenu from './HamburgerMenu';
import './Header.css';

function Header({ onLoginClick }) {
  const [location, setLocation] = useState('New York, Las Cruces');
  const [isMenuOpen, setIsMenuOpen] = useState(false);

  const handleLoginClick = () => {
    setIsMenuOpen(false);
    onLoginClick();
  };

  return (
    <>
      <header className="header">
        <div className="header-content">
          <div className="location-selector">
            <div className="location-label">Your location</div>
            <div className="location-value">
              <i className="fas fa-map-marker-alt location-icon"></i>
              <select 
                value={location} 
                onChange={(e) => setLocation(e.target.value)}
                className="location-dropdown"
              >
                <option>Kilimani, Nairobi</option>
                <option>Nyali, Mombasa</option>
                <option>Malindi, Kenya</option>
                <option>Lavington, Nairobi</option>
              </select>
            </div>
          </div>
          
          <div className="header-actions">
            {/* <button className="icon-btn notification-btn">
              <i className="far fa-bell"></i>
              <span className="notification-badge"></span>
            </button> */}
            <button className="icon-btn menu-btn" onClick={() => setIsMenuOpen(true)}>
              <i className="fas fa-bars"></i>
            </button>
          </div>
        </div>
      </header>

      <HamburgerMenu 
        isOpen={isMenuOpen}
        onClose={() => setIsMenuOpen(false)}
        onLoginClick={handleLoginClick}
      />
    </>
  );
}

export default Header;