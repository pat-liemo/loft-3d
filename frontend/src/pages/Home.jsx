import { useState, useRef } from 'react';
import Header from '../components/Header';
import SearchBar from '../components/SearchBar';
import PromoBanner from '../components/PromoBanner';
import CategoryTabs from '../components/CategoryTabs';
import CategoryCarousel from '../components/CategoryCarousel';
import PropertyCarousel from '../components/PropertyCarousel';
import MoreToExplore from '../components/MoreToExplore';
import Footer from '../components/Footer';
import FilterModal from '../components/FilterModal';
import AuthModal from '../components/AuthModal';
import './Home.css';

function Home() {
  const [activeVisualCategory, setActiveVisualCategory] = useState('Specials');
  const [activeTextCategory, setActiveTextCategory] = useState('Specials');
  const [exploreCategory, setExploreCategory] = useState(null);
  const [isFilterOpen, setIsFilterOpen] = useState(false);
  const [isAuthOpen, setIsAuthOpen] = useState(false);
  const moreToExploreRef = useRef(null);

  const handleVisualCategoryChange = (category) => {
    setActiveVisualCategory(category);
    setExploreCategory(category);
    
    // Scroll to More to Explore section
    setTimeout(() => {
      moreToExploreRef.current?.scrollIntoView({ 
        behavior: 'smooth', 
        block: 'start' 
      });
    }, 100);
  };

  const handleTextCategoryChange = (category) => {
    setActiveTextCategory(category);
  };

  const handleApplyFilters = (filters) => {
    console.log('Applied filters:', filters);
    // TODO: Implement filter logic
  };

  return (
    <div className="home-page">
      {/* Dark theme section */}
      <div className="dark-section">
        <Header onLoginClick={() => setIsAuthOpen(true)} />
        <SearchBar onFilterClick={() => setIsFilterOpen(true)} />
        <PromoBanner />
      </div>
      
      {/* Light theme section */}
      <div className="light-section">
        <h2 className="category-title">Categories</h2>
        {/* Visual Category Carousel with images */}
        <CategoryCarousel onCategoryChange={handleVisualCategoryChange} activeCategory={activeVisualCategory} />
        
        {/* Featured Section with title, category tabs, and property carousel */}
        <div className="featured-section">
          <div className="featured-header">
            <h2 className="featured-title">Featured</h2>
            <a href="#" className="see-all-link">See all</a>
          </div>
          
          {/* Text Category Tabs - BETWEEN title and property carousel */}
          <CategoryTabs onCategoryChange={handleTextCategoryChange} activeCategory={activeTextCategory} />
          
          {/* Property Carousel */}
          <PropertyCarousel 
            category={activeTextCategory === 'Specials' ? null : activeTextCategory.toLowerCase()} 
            featured={activeTextCategory === 'Specials'} 
          />
        </div>
        
        {/* More to Explore Section */}
        <div ref={moreToExploreRef}>
          <MoreToExplore category={exploreCategory} />
        </div>
      </div>

      {/* Footer */}
      <Footer />

      {/* Filter Modal - rendered at root level */}
      <FilterModal 
        isOpen={isFilterOpen}
        onClose={() => setIsFilterOpen(false)}
        onApplyFilters={handleApplyFilters}
      />

      {/* Auth Modal - rendered at root level */}
      <AuthModal 
        isOpen={isAuthOpen}
        onClose={() => setIsAuthOpen(false)}
      />
    </div>
  );
}

export default Home;
