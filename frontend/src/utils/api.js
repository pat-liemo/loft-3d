import axios from 'axios';

const api = axios.create({
  baseURL: '/api',
  headers: {
    'Content-Type': 'application/json'
  }
});

export const getProperties = async (filters = {}) => {
  const params = {};
  if (filters.category) params.category = filters.category;
  if (filters.location) params.location = filters.location;
  if (filters.featured) params.featured = true;
  
  const response = await api.get('/properties.php', { params });
  return response.data.data || response.data;
};

export const getPropertyById = async (id) => {
  const response = await api.get(`/properties.php?id=${id}`);
  return response.data;
};

export const toggleFavorite = async (propertyId) => {
  const response = await api.post('/favorites.php', { property_id: propertyId });
  return response.data;
};

export const getFavorites = async () => {
  const response = await api.get('/favorites.php');
  return response.data;
};

export const createReservation = async (data) => {
  const response = await api.post('/reservations.php', data);
  return response.data;
};

export const getLocations = async () => {
  const response = await api.get('/locations.php');
  return response.data;
};

export default api;
