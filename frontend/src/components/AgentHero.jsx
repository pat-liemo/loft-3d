import React from 'react';
import './AgentHero.css';

function AgentHero({ agent, onBack }) {
  return (
    <div className="agent-hero-section">
      <button className="agent-back-btn" onClick={onBack}>
        <i className="fas fa-arrow-left"></i>
      </button>

      <div className="agent-hero-content">
        <div className="agent-avatar-container">
          <img src={agent.avatar} alt={agent.name} className="agent-hero-avatar" />
        </div>

        <div className="agent-hero-info">
          <div className="agent-hero-name-container">
            <h1 className="agent-hero-name">{agent.name}</h1>
            {agent.verified && (
              <img src="/ver.png" alt="Verified" className="agent-verified-badge-inline" />
            )}
          </div>
          
          <div className="agent-hero-email">
            {agent.email}
          </div>

          <div className="agent-hero-stats">
            <div className="agent-stat">
              <span className="agent-stat-number">{agent.totalProperties}</span>
              <span className="agent-stat-label">Properties</span>
            </div>
            <div className="agent-stat">
              <span className="agent-stat-number">{agent.reviews}</span>
              <span className="agent-stat-label">Reviews</span>
            </div>
            <div className="agent-stat">
              <span className="agent-stat-number">{agent.rating}</span>
              <span className="agent-stat-label">Rating</span>
            </div>
          </div>

          <h3 className='about-title'>About the Agency</h3>
          <div className='bio'>
            <span>
            <i className='fa fa-quote-left text-white' aria-hidden='true'></i>
          </span>
          <p className="agent-hero-bio">{agent.bio}</p>
          </div>
          
          <div className="agent-hero-actions">
            <button className="agent-contact-btn primary">
              <i className="fas fa-phone"></i>
              Call Agent
            </button>
            <button className="agent-contact-btn secondary">
              <i className="fab fa-whatsapp"></i>
              WhatsApp
            </button>
          </div>
        </div>
      </div>

    </div>
  );
}

export default AgentHero;