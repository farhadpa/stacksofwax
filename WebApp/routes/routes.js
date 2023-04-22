const express = require('express');
const routes = express.Router();

const authControllers = require('../controllers/authControllers');
const userControllers = require('../controllers/userControllers');
const collectionControllers = require('../controllers/collectionControllers');
const vinylControllers = require('../controllers/vinylControllers');
const reviewControllers = require('../controllers/reviewControllers');
const auth = require("../middleware/auth");
const upload = require("../middleware/upload");


routes.get('/home', collectionControllers.getCollections);

// collection get routes
routes.get('/collections/', collectionControllers.getCollections);
routes.get('/collections/:id', collectionControllers.getCollectionById);
// collection post routes. create collection
routes.get('/create/collections', auth, collectionControllers.getCreateCollection);
routes.post('/create/collections',[auth,upload], collectionControllers.createCollection);

// review routes.
routes.get('/collections/:id/reviews', reviewControllers.getReviewsByCollectionId);
routes.post('/collections/:id/reviews', auth, reviewControllers.addReviewToCollection);

// like routes
routes.post('/collections/:id/like', auth, collectionControllers.likeCollection);

// auth routes
routes.get('/login', authControllers.getSingIn);
routes.post('/login', authControllers.signIn);
routes.get('/logout', authControllers.signOut);
routes.get('/register', authControllers.getRegister);
routes.post('/register', authControllers.register);

// user routes
routes.get('/users/:username', userControllers.getUserCollections);
routes.get('/profile/:username', userControllers.getUserProfile);
routes.get('/profile/:username/collections/:id', userControllers.getUserCollectionById);

// vinyl routes
routes.get('/vinyls/:id', vinylControllers.getVinylById);
routes.get('/create/vinyls', vinylControllers.getCreateVinyl);
routes.post('/create/vinyl', upload, vinylControllers.createVinyl);

module.exports = routes;