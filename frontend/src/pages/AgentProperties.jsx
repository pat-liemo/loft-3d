import React, { useState, useMemo, useEffect } from 'react';
import { useNavigate, useParams } from 'react-router-dom';
import AgentHero from '../components/AgentHero';
import AgentPropertyGrid from '../components/AgentPropertyGrid';
import './AgentProperties.css';

function AgentProperties() {
  const { agentId } = useParams();
  const navigate = useNavigate();
  const [activeFilter, setActiveFilter] = useState('all');

  // Scroll to top on page load
  useEffect(() => {
    window.scrollTo(0, 0);
  }, []);

  // Handle scroll effect for sliding content
  useEffect(() => {
    const calculateContentPosition = () => {
      const heroSection = document.querySelector('.agent-hero-section');
      if (heroSection) {
        const heroHeight = heroSection.offsetHeight;
        const contentWrapper = document.querySelector('.agent-content-wrapper');
        if (contentWrapper) {
          // Position content just 8px below hero content (much closer)
          const topMargin = heroHeight - 40;
          contentWrapper.style.marginTop = `${topMargin}px`;
          // No negative margin-bottom to avoid gaps
        }
      }
    };

    const handleScroll = () => {
      const scrollY = window.scrollY;
      const contentWrapper = document.querySelector('.agent-content-wrapper');
      const heroSection = document.querySelector('.agent-hero-section');
      
      if (contentWrapper && heroSection) {
        const heroHeight = heroSection.offsetHeight;
        const startSliding = heroHeight - 50; // Start sliding 50px before natural position
        
        if (scrollY > startSliding) {
          const slideAmount = scrollY - startSliding;
          contentWrapper.style.transform = `translateY(-${slideAmount}px)`;
        } else {
          contentWrapper.style.transform = 'translateY(0)';
        }
      }
    };

    // Calculate initial position
    calculateContentPosition();
    
    // Recalculate on window resize
    window.addEventListener('resize', calculateContentPosition);
    window.addEventListener('scroll', handleScroll);
    
    return () => {
      window.removeEventListener('resize', calculateContentPosition);
      window.removeEventListener('scroll', handleScroll);
    };
  }, []);

  // Mock agent data - in real app, fetch by agentId
  const agent = useMemo(() => ({
    id: agentId || '1',
    name: 'Peter Parker',
    email: 'peterparker@mail.com',
    phone: '+254 791 488 881',
    avatar: 'https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?w=200&h=200&fit=crop&crop=face',
    verified: true,
    rating: 4.9,
    reviews: 127,
    totalProperties: 24,
    bio: 'Experienced real estate professional specializing in luxury properties and commercial spaces. Helping clients find their perfect space for over 8 years.',
    specialties: ['Luxury Homes', 'Commercial', 'Investment Properties'],
    languages: ['English', 'Swahili', 'French']
  }), [agentId]);

  // Mock properties data
  const properties = useMemo(() => [
    {
      id: 1,
      name: 'Nova Palace',
      price: 'KES 53M',
      image: 'https://images.unsplash.com/photo-1545324418-cc1a3fa10c00?w=400&h=300&fit=crop',
      type: 'residential',
      bedrooms: 3,
      bathrooms: 2,
      sqft: 2500,
      location: 'Westlands, Nairobi'
    },
    {
      id: 2,
      name: 'Executive Office Suite',
      price: 'KES 12M',
      image: 'https://images.unsplash.com/photo-1497366216548-37526070297c?w=400&h=300&fit=crop',
      type: 'commercial',
      sqft: 1200,
      location: 'CBD, Nairobi'
    },
    {
      id: 3,
      name: 'Garden View Apartment',
      price: 'KES 28M',
      image: 'https://images.unsplash.com/photo-1560448204-e02f11c3d0e2?w=400&h=300&fit=crop',
      type: 'residential',
      bedrooms: 2,
      bathrooms: 1,
      sqft: 1800,
      location: 'Karen, Nairobi'
    },
    {
      id: 4,
      name: 'Retail Space',
      price: 'KES 8M',
      image: 'https://images.unsplash.com/photo-1441986300917-64674bd600d8?w=400&h=300&fit=crop',
      type: 'commercial',
      sqft: 800,
      location: 'Kilimani, Nairobi'
    },
    {
      id: 5,
      name: 'Modern Townhouse',
      price: 'KES 45M',
      image: 'https://images.unsplash.com/photo-1502672260266-1c1ef2d93688?w=400&h=300&fit=crop',
      type: 'residential',
      bedrooms: 4,
      bathrooms: 3,
      sqft: 3200,
      location: 'Runda, Nairobi'
    },
    {
      id: 6,
      name: 'Warehouse Space',
      price: 'KES 15M',
      image: 'https://images.unsplash.com/photo-1586023492125-27b2c045efd7?w=400&h=300&fit=crop',
      type: 'commercial',
      sqft: 5000,
      location: 'Industrial Area, Nairobi'
    }
  ], []);

  const filteredProperties = useMemo(() => {
    if (activeFilter === 'all') return properties;
    return properties.filter(property => property.type === activeFilter);
  }, [properties, activeFilter]);

  const propertyTypes = [
    { key: 'all', label: 'All Properties', count: properties.length },
    { key: 'residential', label: 'Residential', count: properties.filter(p => p.type === 'residential').length },
    { key: 'commercial', label: 'Commercial', count: properties.filter(p => p.type === 'commercial').length }
  ];

  return (
    <div className="agent-properties-page">
      <div className="agent-hero-wrapper">
        <AgentHero 
          agent={agent}
          onBack={() => navigate(-1)}
        />
      </div>
      
      <div className="agent-content-wrapper">
        <AgentPropertyGrid 
          properties={filteredProperties}
          propertyTypes={propertyTypes}
          activeFilter={activeFilter}
          onFilterChange={setActiveFilter}
          agent={agent}
        />
      </div>
    </div>
  );
}

export default AgentProperties;