const express = require('express');
const routes = express.Router();

const userControllers = require('../controllers/userControllers');
const collectionControllers = require('../controllers/collectionControllers');

const auth = require("../middleware/auth");

routes.post('/user', userControllers.register);
routes.post('/user/login', userControllers.signIn);
routes.get('/user/logout', userControllers.signOut);

routes.get('/collections', auth, collectionControllers.allCollections);
routes.get('/collections/:id', collectionControllers.collectionById);
routes.get('/collections/:id/reviews', collectionControllers.reviewsByCollectionId);
routes.get('/collections/:id/reviews/:review_id', collectionControllers.reviewById);



module.exports = routes;
