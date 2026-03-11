import { useState, useEffect } from 'react';
import './PromoBanner.css';

function PromoBanner() {
  const [currentSlide, setCurrentSlide] = useState(0);
  const [prevSlide, setPrevSlide] = useState(null);
  const [direction, setDirection] = useState('next');

  const slides = [
    {
      type: 'full-image',
      image: '/promo-banner.jpg',
      title: 'Discover Luxury Living',
      subtitle: 'Experience premium properties with stunning views',
      buttonText: 'Explore Now'
    },
    {
      type: 'split',
      image: '/promo-banner-2.jpg',
      title: 'Virtual Tours at\nYour Fingertips',
      subtitle: 'Experience premium properties\nwith our immersive virtual\ntours.',
      buttonText: 'Book Us Now'
    },
    {
      type: 'full-image',
      image: '/promo-banner-3.jpg',
      title: 'Your Dream Home Awaits',
      subtitle: 'Browse through our exclusive collection of properties',
      buttonText: 'View Properties'
    },
    {
      type: 'split',
      image: '/promo-banner-4.jpg',
      title: 'Premium Real Estate\nSolutions',
      subtitle: 'Find your perfect space\nwith expert guidance\nand support.',
      buttonText: 'Get Started'
    }
  ];

  const SLIDE_DURATION = 5000; // 5 seconds per slide

  useEffect(() => {
    const slideInterval = setInterval(() => {
      setDirection('next');
      setPrevSlide(currentSlide);
      setCurrentSlide((prev) => (prev + 1) % slides.length);
    }, SLIDE_DURATION);

    return () => {
      clearInterval(slideInterval);
    };
  }, [slides.length, currentSlide]);

  const handleDotClick = (index) => {
    if (index !== currentSlide) {
      setDirection(index > currentSlide ? 'next' : 'prev');
      setPrevSlide(currentSlide);
      setCurrentSlide(index);
    }
  };

  const renderSlide = (slideData, index) => {
    const isActive = index === currentSlide;
    const isPrev = index === prevSlide;
    const slideClass = `promo-slide ${isActive ? 'active' : ''} ${isPrev || isActive ? direction : ''}`;

    if (slideData.type === 'full-image') {
      return (
        <div key={index} className={`${slideClass} full-image-slide`}>
          <img src={slideData.image} alt="Promo" className="slide-bg-image" />
          <div className="slide-overlay"></div>
          <div className="slide-content">
            <h2 className="promo-title">{slideData.title}</h2>
            <p className="promo-subtitle">{slideData.subtitle}</p>
            <button className="promo-btn">
              {slideData.buttonText}
                <i className="fas fa-arrow-right"></i>
            </button>
          </div>
        </div>
      );
    } else {
      return (
        <div 
          key={index} 
          className={`${slideClass} split-slide`}
          style={{
            backgroundImage: `url(${slideData.image})`
          }}
        >
          <div className="promo-text">
            <h2 className="promo-title">
              {slideData.title.split('\n').map((line, i) => (
                <span key={i}>{line}<br /></span>
              ))}
            </h2>
            <p className="promo-subtitle">
              {slideData.subtitle.split('\n').map((line, i) => (
                <span key={i}>{line}<br /></span>
              ))}
            </p>
          </div>
          <button className="promo-btn">
            {slideData.buttonText}
              <i className="fas fa-arrow-right"></i>
          </button>
        </div>
      );
    }
  };

  return (
    <div className="promo-banner">
      <div className="promo-carousel">
        <div className="slides-wrapper">
          {slides.map((slide, index) => renderSlide(slide, index))}
        </div>

        {/* Single Progress Bar */}
        <div className="progress-bar-container">
          <div 
            key={currentSlide}
            className="progress-bar" 
            style={{ 
              animation: `progress ${SLIDE_DURATION}ms linear`
            }}
          ></div>
        </div>

        {/* Dot Indicators */}
        <div className="carousel-dots">
          {slides.map((_, index) => (
            <button
              key={index}
              className={`dot ${index === currentSlide ? 'active' : ''}`}
              onClick={() => handleDotClick(index)}
              aria-label={`Go to slide ${index + 1}`}
            />
          ))}
        </div>
      </div>
    </div>
  );
}

export default PromoBanner;
