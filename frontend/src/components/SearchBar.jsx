import './SearchBar.css';

function SearchBar({ onFilterClick }) {
  return (
    <div className="search-bar">
      <div className="search-input-wrapper">
        <i className="fas fa-map-marker-alt location-icon searchbar"></i>
        <input 
          type="text" 
          placeholder="Select a Location"
          className="search-input"
          readOnly
        />
        <button className="filter-btn" onClick={onFilterClick}>
          <i className="fas fa-sliders-h filter-icon"></i>
        </button>
      </div>
    </div>
  );
}

export default SearchBar;
