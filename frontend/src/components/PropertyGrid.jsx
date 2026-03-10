import PropertyCard from './PropertyCard';
import './PropertyGrid.css';

function PropertyGrid({ properties }) {
  return (
    <div className="property-grid">
      {properties.map((property) => (
        <PropertyCard key={property.id} property={property} />
      ))}
    </div>
  );
}

export default PropertyGrid;
