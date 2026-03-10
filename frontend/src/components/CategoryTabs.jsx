import { useEffect, useState } from 'react';
import './CategoryTabs.css';

function CategoryTabs({ onCategoryChange, activeCategory }) {
  const [activeTab, setActiveTab] = useState(activeCategory || 'Specials');
  
  const categories = ['Specials', 'Apartments', 'Houses', 'Condos', 'Luxury', 'Offices', 'AirBnB', 'Townhouses'];

  // Sync with parent component
  useEffect(() => {
    if (activeCategory) {
      setActiveTab(activeCategory);
    }
  }, [activeCategory]);

  const handleTabClick = (category) => {
    setActiveTab(category);
    onCategoryChange?.(category);
  };

  return (
    <div className="category-tabs">
      <div className="tabs-wrapper">
        {categories.map((category) => (
          <button
            key={category}
            className={`tab ${activeTab === category ? 'active' : ''}`}
            onClick={() => handleTabClick(category)}
          >
            {category}
          </button>
        ))}
      </div>
    </div>
  );
}

export default CategoryTabs;
