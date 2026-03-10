import { useEffect, useState } from 'react';
import './CategoryCarousel.css';

function CategoryCarousel({ onCategoryChange, activeCategory }) {
  const [activeCat, setActiveCat] = useState(activeCategory || 'Specials');

  const categories = [
    {
      id: 'Specials',
      name: 'Specials',
      image: 'https://images.unsplash.com/photo-1560448204-e02f11c3d0e2?w=400&h=400&fit=crop&q=80',
      icon: 'fas fa-star'
    },
    {
      id: 'Apartments',
      name: 'Apartments',
      image: 'https://images.unsplash.com/photo-1522708323590-d24dbb6b0267?w=400&h=400&fit=crop&q=80',
      icon: 'fas fa-building'
    },
    {
      id: 'Houses',
      name: 'Houses',
      image: 'https://images.unsplash.com/photo-1570129477492-45c003edd2be?w=400&h=400&fit=crop&q=80',
      icon: 'fas fa-home'
    },
    {
      id: 'Condos',
      name: 'Condos',
      image: 'https://images.unsplash.com/photo-1512917774080-9991f1c4c750?w=400&h=400&fit=crop&q=80',
      icon: 'fas fa-city'
    },
    {
      id: 'Luxury',
      name: 'Luxury',
      image: 'https://images.unsplash.com/photo-1613490493576-7fde63acd811?w=400&h=400&fit=crop&q=80',
      icon: 'fas fa-gem'
    }
  ];

  // Sync with parent component
  useEffect(() => {
    if (activeCategory) {
      setActiveCat(activeCategory);
    }
  }, [activeCategory]);

  const handleCategoryClick = (category) => {
    setActiveCat(category.id);
    onCategoryChange?.(category.id);
  };

  return (
    <div className="category-carousel">
      <div className="category-track">
        {categories.map((category) => (
          <div
            key={category.id}
            className={`category-box ${activeCat === category.id ? 'active' : ''}`}
            onClick={() => handleCategoryClick(category)}
          >
            <div className="category-image">
              <img src={category.image} alt={category.name} />
              <div className="category-overlay">
                {/* <i className={category.icon}></i> */}
              </div>
            </div>
            <span className="category-name">{category.name}</span>
          </div>
        ))}
      </div>
    </div>
  );
}

export default CategoryCarousel;