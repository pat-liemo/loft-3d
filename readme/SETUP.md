# Virtual Tour Marketplace - Setup Guide

## Prerequisites
- Node.js 18+ and npm
- PHP 8.0+
- MySQL/MariaDB
- Apache/Nginx web server

## Installation

### 1. Frontend Setup
```bash
cd frontend
npm install
npm run dev
```

The frontend will run on `http://localhost:3000`

### 2. Database Setup
Import the existing database:
```bash
mysql -u root -p < api/loft.sql
```

### 3. API Configuration
Update `api/config/database.php` with your database credentials.

### 4. Build for Production
```bash
cd frontend
npm run build
```

The build files will be in `frontend/dist`

## Project Structure
```
├── api/                    # PHP Backend
│   ├── classes/           # Model classes
│   ├── config/            # Configuration files
│   ├── properties.php     # Properties API endpoint
│   ├── favorites.php      # Favorites API endpoint
│   └── locations.php      # Locations API endpoint
│
├── frontend/              # React Frontend
│   ├── public/           # Static assets
│   ├── src/
│   │   ├── components/   # React components
│   │   ├── pages/        # Page components
│   │   ├── utils/        # Utility functions
│   │   ├── App.jsx       # Main app component
│   │   └── main.jsx      # Entry point
│   └── package.json
│
└── readme/               # Documentation
```

## Features
- Progressive Web App (PWA) with offline support
- Real estate property browsing
- Virtual tour marketplace
- Favorites system
- Property details with images
- Responsive mobile-first design
- Service worker for caching

## API Endpoints
- `GET /api/properties.php` - Get all properties
- `GET /api/properties.php?id={id}` - Get property by ID
- `POST /api/favorites.php` - Toggle favorite
- `GET /api/favorites.php` - Get user favorites
- `GET /api/locations.php` - Get locations
