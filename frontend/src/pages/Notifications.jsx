import { useState, useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import './Notifications.css';

function Notifications() {
  const navigate = useNavigate();
  const [notifications, setNotifications] = useState([]);

  useEffect(() => {
    window.scrollTo(0, 0);
    // Mock notifications data - replace with actual API call
    setNotifications([
      {
        id: 1,
        type: 'booking',
        title: 'Booking Confirmed',
        message: 'Your viewing for Nova Palace has been confirmed for March 15, 2026 at 10:00 AM',
        time: '2 hours ago',
        read: false,
        icon: 'fas fa-calendar-check'
      },
      {
        id: 2,
        type: 'property',
        title: 'New Property Match',
        message: 'A new property matching your preferences is now available in Westlands',
        time: '1 day ago',
        read: false,
        icon: 'fas fa-home'
      },
      {
        id: 3,
        type: 'price',
        title: 'Price Drop Alert',
        message: 'Garden View Apartment price reduced by 10%',
        time: '2 days ago',
        read: true,
        icon: 'fas fa-tag'
      },
      {
        id: 4,
        type: 'message',
        title: 'New Message',
        message: 'Agent Peter Parker sent you a message about your inquiry',
        time: '3 days ago',
        read: true,
        icon: 'fas fa-envelope'
      }
    ]);
  }, []);

  const markAsRead = (id) => {
    setNotifications(notifications.map(notif => 
      notif.id === id ? { ...notif, read: true } : notif
    ));
  };

  const markAllAsRead = () => {
    setNotifications(notifications.map(notif => ({ ...notif, read: true })));
  };

  const unreadCount = notifications.filter(n => !n.read).length;

  return (
    <div className="notifications-page">
      <div className="notifications-hero">
        <button className="notifications-back-btn" onClick={() => navigate(-1)}>
          <i className="fas fa-arrow-left"></i>
        </button>
        <h1 className="notifications-title">Notifications</h1>
        {unreadCount > 0 && (
          <div className="notifications-badge">{unreadCount}</div>
        )}
      </div>

      <div className="notifications-content">
        {notifications.length > 0 && unreadCount > 0 && (
          <div className="notifications-header">
            <button className="mark-all-read-btn" onClick={markAllAsRead}>
              Mark all as read
            </button>
          </div>
        )}

        {notifications.length > 0 ? (
          <div className="notifications-list">
            {notifications.map((notification) => (
              <div 
                key={notification.id} 
                className={`notification-item ${!notification.read ? 'unread' : ''}`}
                onClick={() => markAsRead(notification.id)}
              >
                <div className="notification-icon">
                  <i className={notification.icon}></i>
                </div>
                <div className="notification-content">
                  <h3 className="notification-title">{notification.title}</h3>
                  <p className="notification-message">{notification.message}</p>
                  <span className="notification-time">{notification.time}</span>
                </div>
                {!notification.read && <div className="notification-dot"></div>}
              </div>
            ))}
          </div>
        ) : (
          <div className="notifications-empty">
            <i className="fas fa-bell"></i>
            <h3>No Notifications</h3>
            <p>You're all caught up! Check back later for updates</p>
          </div>
        )}
      </div>
    </div>
  );
}

export default Notifications;
