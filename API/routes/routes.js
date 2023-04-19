const express = require('express');
const routes = express.Router();

const authControllers = require('../controllers/authControllers');
const userControllers = require('../controllers/userControllers');
const collectionControllers = require('../controllers/collectionControllers');
const reviewControllers = require('../controllers/reviewControllers');
const vinylControllers = require('../controllers/vinylControllers');


routes.post('/users/register', authControllers.register);
routes.post('/users/login', authControllers.signIn);

routes.get('/users/:username', userControllers.getUserAndCollections);


routes.get('/collections/', collectionControllers.allCollections);
routes.get('/collections/:id', collectionControllers.collectionById);
routes.post('/create/collection/', collectionControllers.createCollection);

routes.get('/collections/:id/reviews', reviewControllers.reviewsByCollectionId);
// routes.get('/collections/:id/reviews/:review_id', collectionControllers.reviewById);

routes.get('/vinyls/:id', vinylControllers.vinylById);
routes.post('/create/vinyl/', vinylControllers.createVinyl);

module.exports = routes;