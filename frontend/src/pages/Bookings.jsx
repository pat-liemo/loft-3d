import { useState, useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import './Bookings.css';

function Bookings() {
  const navigate = useNavigate();
  const [bookings, setBookings] = useState([]);

  useEffect(() => {
    window.scrollTo(0, 0);
    // Mock bookings data - replace with actual API call
    setBookings([
      {
        id: 1,
        propertyName: 'Nova Palace',
        propertyImage: 'https://images.unsplash.com/photo-1545324418-cc1a3fa10c00?w=400&h=300&fit=crop',
        date: '2026-03-15',
        time: '10:00 AM',
        status: 'confirmed',
        location: 'Westlands, Nairobi',
        agentName: 'Sarah Johnson',
        agentPhone: '+254 712 345 678'
      },
      {
        id: 2,
        propertyName: 'Garden View Apartment',
        propertyImage: 'https://images.unsplash.com/photo-1560448204-e02f11c3d0e2?w=400&h=300&fit=crop',
        date: '2026-03-20',
        time: '2:00 PM',
        status: 'pending',
        location: 'Karen, Nairobi',
        agentName: 'Michael Chen',
        agentPhone: '+254 723 456 789'
      },
      {
        id: 3,
        propertyName: 'Luxury Villa',
        propertyImage: 'https://images.unsplash.com/photo-1613490493576-7fde63acd811?w=400&h=300&fit=crop',
        date: '2026-03-10',
        time: '3:00 PM',
        status: 'completed',
        location: 'Runda, Nairobi',
        agentName: 'Emma Wilson',
        agentPhone: '+254 734 567 890'
      }
    ]);
  }, []);

  const handleCancelBooking = (bookingId) => {
    setBookings(bookings.map(booking => 
      booking.id === bookingId 
        ? { ...booking, status: 'cancelled' }
        : booking
    ));
  };

  const getStatusColor = (status) => {
    switch (status) {
      case 'confirmed':
        return '#4caf50';
      case 'pending':
        return '#ff9800';
      case 'cancelled':
        return '#f44336';
      default:
        return '#999';
    }
  };

  return (
    <div className="bookings-page">
      <div className="bookings-hero">
        <button className="bookings-back-btn" onClick={() => navigate(-1)}>
          <i className="fas fa-arrow-left"></i>
        </button>
        <h1 className="bookings-title">My Bookings</h1>
      </div>

      <div className="bookings-content">
        {bookings.length > 0 ? (
          <div className="bookings-list">
            {bookings.map((booking) => (
              <div 
                key={booking.id} 
                className={`booking-card booking-${booking.status}`}
              >
                <div className="booking-image-wrapper">
                  <img 
                    src={booking.propertyImage} 
                    alt={booking.propertyName}
                    className="booking-image"
                    onClick={() => navigate(`/property/${booking.id}`)}
                  />
                  <div 
                    className="booking-status-badge"
                    style={{ backgroundColor: getStatusColor(booking.status) }}
                  >
                    {booking.status}
                  </div>
                </div>
                
                <div className="booking-info">
                  <h3 
                    className="booking-name"
                    onClick={() => navigate(`/property/${booking.id}`)}
                  >
                    {booking.propertyName}
                  </h3>
                  
                  <div className="booking-location">
                    <i className="fas fa-map-marker-alt"></i>
                    <span>{booking.location}</span>
                  </div>

                  <div className="booking-schedule">
                    <div className="booking-schedule-item">
                      <i className="fas fa-calendar-alt"></i>
                      <span>{new Date(booking.date).toLocaleDateString('en-US', { 
                        weekday: 'short',
                        month: 'short', 
                        day: 'numeric', 
                        year: 'numeric' 
                      })}</span>
                    </div>
                    <div className="booking-schedule-item">
                      <i className="fas fa-clock"></i>
                      <span>{booking.time}</span>
                    </div>
                  </div>

                  <div className="booking-agent">
                    <div className="booking-agent-avatar">
                      <i className="fas fa-user"></i>
                    </div>
                    <div className="booking-agent-info">
                      <div className="booking-agent-name">{booking.agentName}</div>
                      <div className="booking-agent-phone">{booking.agentPhone}</div>
                    </div>
                  </div>

                  <div className="booking-actions">
                    {booking.status === 'confirmed' && (
                      <>
                        <button 
                          className="booking-action-btn booking-btn-reschedule"
                          onClick={() => {/* Handle reschedule */}}
                        >
                          <i className="fas fa-calendar-alt"></i>
                          Reschedule
                        </button>
                        <button 
                          className="booking-action-btn booking-btn-cancel"
                          onClick={() => handleCancelBooking(booking.id)}
                        >
                          <i className="fas fa-times"></i>
                          Cancel
                        </button>
                      </>
                    )}
                    {booking.status === 'pending' && (
                      <div className="booking-pending-message">
                        <i className="fas fa-hourglass-half"></i>
                        Waiting for confirmation
                      </div>
                    )}
                    {booking.status === 'completed' && (
                      <button 
                        className="booking-action-btn booking-btn-rebook"
                        onClick={() => {/* Handle rebook */}}
                      >
                        <i className="fas fa-redo"></i>
                        Book Again
                      </button>
                    )}
                    {booking.status === 'cancelled' && (
                      <div className="booking-cancelled-message">
                        <i className="fas fa-ban"></i>
                        This booking was cancelled
                      </div>
                    )}
                  </div>
                </div>
              </div>
            ))}
          </div>
        ) : (
          <div className="bookings-empty">
            <i className="fas fa-calendar-check"></i>
            <h3>No Bookings Yet</h3>
            <p>You haven't booked any property viewings yet</p>
            <button className="bookings-browse-btn" onClick={() => navigate('/')}>
              Browse Properties
            </button>
          </div>
        )}
      </div>
    </div>
  );
}

export default Bookings;
