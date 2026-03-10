import { Link } from 'react-router-dom';
import './Footer.css';

function Footer() {
  return (
    <footer className="footer">
      <div className="footer-container">
        <div className="footer-content">
          {/* Brand Section */}
          <div className="footer-column brand-column">
            <div className="footer-brand">
              <Link to="/" className="brand-link">
                <div className="brand-logo">
                  <img src="/loft-studio-logo-white.svg" alt="Loft Studio Logo" className="logo-image" />
                  <h5 className="brand-name">L O F T <sup>³</sup></h5>
                </div>
              </Link>
              <p className="brand-tagline">Space Reimagined</p>
            </div>
            <ul className="social-links">
              <li><a href="#" aria-label="Facebook"><i className="fab fa-facebook-f"></i></a></li>
              <li><a href="#" aria-label="Instagram"><i className="fab fa-instagram"></i></a></li>
              <li><a href="#" aria-label="LinkedIn"><i className="fab fa-linkedin-in"></i></a></li>
            </ul>
          </div>

          {/* Company Section */}
          <div className="footer-column">
            <h3 className="footer-heading">Company</h3>
            <ul className="footer-links">
              <li><Link to="/"><i className="fas fa-chevron-right"></i>Home</Link></li>
              <li><Link to="/about"><i className="fas fa-chevron-right"></i>About</Link></li>
              <li><Link to="/services"><i className="fas fa-chevron-right"></i>Services</Link></li>
            </ul>
          </div>

          {/* Quick Links Section */}
          <div className="footer-column">
            <h3 className="footer-heading">Quick Links</h3>
            <ul className="footer-links">
              <li><Link to="/terms"><i className="fas fa-chevron-right"></i>Terms & Conditions</Link></li>
              <li><Link to="/privacy"><i className="fas fa-chevron-right"></i>Privacy Policy</Link></li>
              <li><Link to="/contact"><i className="fas fa-chevron-right"></i>Contact Center</Link></li>
            </ul>
          </div>

          {/* Contact Section */}
          <div className="footer-column contact-column">
            <h3 className="footer-heading">Have a Question?</h3>
            <ul className="contact-info">
              <li>
                <i className="fas fa-map-marker-alt"></i>
                <span>Suite 721 Kilimani<br />Nairobi, KE</span>
              </li>
              <li>
                <a href="tel:+1234456789">
                  <i className="fas fa-phone"></i>
                  <span>+1 234 456 78910</span>
                </a>
              </li>
              <li>
                <a href="mailto:hello@loftstudio.com">
                  <i className="fas fa-envelope"></i>
                  <span>hello@loftstudio.com</span>
                </a>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </footer>
  );
}

export default Footer;
