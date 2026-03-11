import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import Home from './pages/Home';
import PropertyDetail from './pages/PropertyDetail';
import TermsConditions from './pages/TermsConditions';
import PrivacyPolicy from './pages/PrivacyPolicy';
import './index.css';

function App() {
  return (
    <Router>
      <div className="app-wrapper">
        <Routes>
          <Route path="/" element={<Home />} />
          <Route path="/property/:id" element={<PropertyDetail />} />
          <Route path="/terms" element={<TermsConditions />} />
          <Route path="/privacy" element={<PrivacyPolicy />} />
        </Routes>
      </div>
    </Router>
  );
}

export default App;
