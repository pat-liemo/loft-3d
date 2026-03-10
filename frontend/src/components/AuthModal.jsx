import { useState } from 'react';
import './AuthModal.css';

function AuthModal({ isOpen, onClose }) {
  const [activeTab, setActiveTab] = useState('login');
  const [formData, setFormData] = useState({
    emailOrPhone: '',
    rememberMe: false,
    agreeToTerms: false
  });

  const handleChange = (field, value) => {
    setFormData(prev => ({ ...prev, [field]: value }));
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    console.log('Form submitted:', formData);
    // TODO: Implement authentication logic
  };

  const handleGoogleLogin = () => {
    console.log('Google login clicked');
    // TODO: Implement Google OAuth
  };

  return (
    <>
      <div className={`auth-overlay ${isOpen ? 'active' : ''}`} onClick={onClose}></div>
      <div className={`auth-modal ${isOpen ? 'open' : ''}`}>
        <div className="auth-header">
          <div className="auth-logo">
            <img src="/loft-studio-logo-black.svg" alt="Loft Studio" className="logo-icon" />
            <span className="logo-text">LOFT STUDIO</span>
          </div>
          <button className="auth-close-btn" onClick={onClose}>
            <i className="fas fa-times"></i>
          </button>
        </div>

        <div className="auth-tabs">
          <button
            className={`auth-tab ${activeTab === 'login' ? 'active' : ''}`}
            onClick={() => setActiveTab('login')}
          >
            Login
          </button>
          <button
            className={`auth-tab ${activeTab === 'register' ? 'active' : ''}`}
            onClick={() => setActiveTab('register')}
          >
            Register
          </button>
        </div>

        <form className="auth-form" onSubmit={handleSubmit}>
          <div className="form-group">
            <label>Email or Phone number</label>
            <input
              type="text"
              placeholder={activeTab === 'login' ? 'Phone number or email' : 'Enter email or phone number'}
              value={formData.emailOrPhone}
              onChange={(e) => handleChange('emailOrPhone', e.target.value)}
            />
          </div>

          {activeTab === 'login' ? (
            <div className="form-group checkbox-group">
              <label className="checkbox-label">
                <input
                  type="checkbox"
                  checked={formData.rememberMe}
                  onChange={(e) => handleChange('rememberMe', e.target.checked)}
                />
                <span>Remember Me</span>
              </label>
            </div>
          ) : (
            <div className="form-group checkbox-group">
              <label className="checkbox-label">
                <input
                  type="checkbox"
                  checked={formData.agreeToTerms}
                  onChange={(e) => handleChange('agreeToTerms', e.target.checked)}
                />
                <span>I agree to the <a href="/terms" className="terms-link">Terms & Conditions</a></span>
              </label>
            </div>
          )}

          <button type="submit" className="auth-submit-btn">
            {activeTab === 'login' ? 'CONTINUE' : 'SEND OTP'}
          </button>

          <div className="auth-divider">
            <span>Or {activeTab === 'login' ? 'login' : 'register'} with</span>
          </div>

          <button type="button" className="google-btn" onClick={handleGoogleLogin}>
            <i className="fab fa-google"></i>
            GOOGLE
          </button>

          <div className="auth-footer">
            {activeTab === 'login' ? (
              <p>Don't have an account? <button type="button" className="switch-link" onClick={() => setActiveTab('register')}>Signup</button></p>
            ) : (
              <p>Already have an account? <button type="button" className="switch-link" onClick={() => setActiveTab('login')}>Login</button></p>
            )}
          </div>
        </form>
      </div>
    </>
  );
}

export default AuthModal;
