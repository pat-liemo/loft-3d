import { useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import './Profile.css';

function Profile() {
  const navigate = useNavigate();

  useEffect(() => {
    window.scrollTo(0, 0);
  }, []);

  // Mock user data - replace with actual user data from context/state
  const user = {
    name: 'Pat Aloo',
    email: 'aloemo77@gmail.com',
    avatar: 'https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?w=200&h=200&fit=crop&crop=face'
  };

  const menuItems = [
    { icon: 'fas fa-calendar-check', label: 'My Bookings', path: '/bookings' },
    { icon: 'fas fa-heart', label: 'Favourites', path: '/favourites' },
    { icon: 'fas fa-bell', label: 'Notifications', path: '/notifications' },
    { icon: 'fas fa-cog', label: 'Settings', path: '/settings' }
  ];

  const handleLogout = () => {
    // Add logout logic here
    console.log('Logging out...');
    navigate('/');
  };

  return (
    <div className="profile-page">
      <div className="profile-hero">
        <button className="profile-back-btn" onClick={() => navigate(-1)}>
          <i className="fas fa-arrow-left"></i>
        </button>
        <h1 className="profile-title">Profile</h1>
      </div>

      <div className="profile-content">
        <div className="profile-user-section">
          <div className="profile-avatar-wrapper">
            <img src={user.avatar} alt={user.name} className="profile-avatar" />
            <button className="profile-edit-avatar">
              <i className="fas fa-pencil-alt"></i>
            </button>
          </div>
          <h2 className="profile-user-name">{user.name}</h2>
          <p className="profile-user-email">{user.email}</p>
        </div>

        <div className="profile-menu">
          {menuItems.map((item, index) => (
            <button
              key={index}
              className="profile-menu-item"
              onClick={() => navigate(item.path)}
            >
              <div className="profile-menu-left">
                <i className={item.icon}></i>
                <span>{item.label}</span>
              </div>
              <i className="fas fa-chevron-right"></i>
            </button>
          ))}
        </div>

        <button className="profile-logout-btn" onClick={handleLogout}>
          <i className="fas fa-sign-out-alt"></i>
          <span>Logout</span>
        </button>
      </div>
    </div>
  );
}

export default Profile;
