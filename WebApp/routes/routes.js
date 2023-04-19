const express = require('express');
const routes = express.Router();

const testController = require('../controllers/test');
const authControllers = require('../controllers/authControllers');
const userControllers = require('../controllers/userControllers');
const collectionControllers = require('../controllers/collectionControllers');
const vinylControllers = require('../controllers/vinylControllers');
// const auth = require("../middleware/auth");

routes.get('/test', testController.test);

routes.get('/home', collectionControllers.getCollections);

routes.get('/collections/', collectionControllers.getCollections);
routes.get('/collections/:id', collectionControllers.getCollectionById);
routes.get('/collections/:id/reviews', collectionControllers.getReviewsByCollectionId);

routes.get('/login', authControllers.getSingIn);
routes.post('/login', authControllers.signIn);
routes.get('/logout', authControllers.signOut);

routes.get('/register', authControllers.getRegister);
routes.post('/register', authControllers.register);

routes.get('/users/:username', userControllers.getUserCollections);

routes.get('/profile/:username', userControllers.getUserCollections)
// routes.get('/collections/:id/reviews/:review_id', collectionControllers.reviewById);

routes.get('/vinyls/:id', vinylControllers.getVinylById);

module.exports = routes;