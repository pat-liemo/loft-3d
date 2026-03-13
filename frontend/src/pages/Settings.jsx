import { useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import './Settings.css';

function Settings() {
  const navigate = useNavigate();

  useEffect(() => {
    window.scrollTo(0, 0);
  }, []);

  const settingsItems = [
    // { icon: 'fas fa-user-edit', label: 'Edit Profile', path: '/settings/profile' },
    { icon: 'fas fa-shield-alt', label: 'Security', path: '/settings/security' },
    { icon: 'fas fa-language', label: 'Language', path: '/settings/language' },
    { icon: 'fas fa-question-circle', label: 'Help Center', path: '/help' },
    { icon: 'fas fa-user-plus', label: 'Invite Friends', path: '/invite' },
    { icon: 'fas fa-file-alt', label: 'Terms & Conditions', path: '/terms' },
    { icon: 'fas fa-lock', label: 'Privacy Policy', path: '/privacy' }
  ];

  return (
    <div className="settings-page">
      <div className="settings-hero">
        <button className="settings-back-btn" onClick={() => navigate(-1)}>
          <i className="fas fa-arrow-left"></i>
        </button>
        <h1 className="settings-title">Settings</h1>
      </div>

      <div className="settings-content">
        <div className="settings-menu">
          {settingsItems.map((item, index) => (
            <button
              key={index}
              className="settings-menu-item"
              onClick={() => navigate(item.path)}
            >
              <div className="settings-menu-left">
                <i className={item.icon}></i>
                <span>{item.label}</span>
              </div>
              <i className="fas fa-chevron-right"></i>
            </button>
          ))}
        </div>

        <div className="settings-app-info">
          <p className="settings-version">Version 1.0.0</p>
          <p className="settings-copyright">© 2026 Loft Studio. All rights reserved.</p>
        </div>
      </div>
    </div>
  );
}

export default Settings;
