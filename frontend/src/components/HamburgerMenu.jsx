import { Link } from 'react-router-dom';
import './HamburgerMenu.css';

function HamburgerMenu({ isOpen, onClose, onLoginClick }) {
  const handleLoginClick = () => {
    onClose();
    onLoginClick();
  };

  return (
    <>
      <div className={`menu-overlay ${isOpen ? 'active' : ''}`} onClick={onClose}></div>
      <div className={`hamburger-menu ${isOpen ? 'open' : ''}`}>
        <div className="menu-header">
          <h3>Menu</h3>
          <button className="menu-close-btn" onClick={onClose}>
            <i className="fas fa-times"></i>
          </button>
        </div>

        <nav className="menu-nav">
          <button className="menu-item" onClick={handleLoginClick}>
            <i className="fas fa-sign-in-alt"></i>
            <span>Login / Sign Up</span>
            <i className="fas fa-chevron-right"></i>
          </button>

          <Link to="/list-property" className="menu-item" onClick={onClose}>
            <i className="fas fa-plus-circle"></i>
            <span>List with Us</span>
            <i className="fas fa-chevron-right"></i>
          </Link>

          <Link to="/services" className="menu-item" onClick={onClose}>
            <i className="fas fa-concierge-bell"></i>
            <span>Services</span>
            <i className="fas fa-chevron-right"></i>
          </Link>
        </nav>
      </div>
    </>
  );
}

export default HamburgerMenu;
