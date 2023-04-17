const express = require('express');
const routes = express.Router();

const userControllers = require('../controllers/userControllers');
const collectionControllers = require('../controllers/collectionControllers');

const auth = require("../middleware/auth");

routes.post('/users/register', userControllers.register);
routes.post('/users/login', userControllers.signIn);
routes.get('/users/logout', userControllers.signOut);
routes.get('/users/:username', userControllers.getUserAndCollections);

routes.get('/collections/', collectionControllers.allCollections);
routes.get('/collections/:id', collectionControllers.collectionById);
routes.get('/collections/:id/reviews', collectionControllers.reviewsByCollectionId);
// routes.get('/collections/:id/reviews/:review_id', collectionControllers.reviewById);



module.exports = routes;