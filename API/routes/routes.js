const express = require('express');
const routes = express.Router();

const authControllers = require('../controllers/authControllers');
const userControllers = require('../controllers/userControllers');
const collectionControllers = require('../controllers/collectionControllers');
const reviewControllers = require('../controllers/reviewControllers');
const vinylControllers = require('../controllers/vinylControllers');

// authentication routes
routes.post('/users/register', authControllers.register);
routes.post('/users/login', authControllers.signIn);

// user routes
routes.get('/users/:username', userControllers.getUserAndCollections);

// collection routes
routes.get('/collections/', collectionControllers.allCollections);
routes.get('/collections/:id', collectionControllers.collectionById);
routes.post('/create/collections/', collectionControllers.createCollection);
routes.post('/update/collections/:id/like', collectionControllers.likeCollection);

// review routes
routes.get('/collections/:id/reviews', reviewControllers.reviewsByCollectionId);
routes.post('/create/review/', reviewControllers.createReviewForCollection);

// vinyl routes
routes.get('/vinyls/:id', vinylControllers.vinylById);
routes.post('/create/vinyls/', vinylControllers.createVinyl);

module.exports = routes;