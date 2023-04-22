const express = require('express');
const routes = express.Router();

const authControllers = require('../controllers/authControllers');
const userControllers = require('../controllers/userControllers');
const collectionControllers = require('../controllers/collectionControllers');
const reviewControllers = require('../controllers/reviewControllers');
const vinylControllers = require('../controllers/vinylControllers');
const likeControllers = require('../controllers/likeControllers');
const searchControllers = require('../controllers/searchControllers');

// authentication routes
routes.post('/users/register', authControllers.register);
routes.post('/users/login', authControllers.signIn);
// user routes
routes.get('/users/:username', userControllers.getUserAndCollections);
routes.get('/users/:username/vinyls', userControllers.getUserVinyls);

// collection routes
routes.get('/collections/', collectionControllers.allCollections);
routes.get('/collections/:id', collectionControllers.collectionById);
routes.get('/collections/:id/reviews', reviewControllers.reviewsByCollectionId);

routes.get('/vinyls/:id', vinylControllers.vinylById);

routes.get('/genres', vinylControllers.getAllGenres);

// search routes
routes.get('/search', searchControllers.search);

// get like for a collection by user
routes.post('/collections/:collection_id/like/:user_id', likeControllers.likeForCollectionByUser);

// delete collection
routes.delete('/delete/collections/:id', collectionControllers.deleteCollection);
// to remove a vinyl from a collection
routes.delete('/delete/collections/:id/vinyl/:vinyl_id', collectionControllers.removeVinylFromCollectionController);
// delete vinyl
routes.delete('/delete/vinyls/:id', vinylControllers.deleteVinyl);

// to add a vinyl to a collection
routes.post('/update/collections/:id/vinyl/:vinyl_id', collectionControllers.addVinylToCollectionController);
// to like a collection
// routes.post('/update/collections/:id/like', collectionControllers.likeCollection);

routes.post('/create/review/', reviewControllers.createReviewForCollection);
routes.post('/create/collections/', collectionControllers.createCollection);
routes.post('/create/vinyls/', vinylControllers.createVinyl);



module.exports = routes;