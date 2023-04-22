const express = require('express');
const routes = express.Router();

const authControllers = require('../controllers/authControllers');
const userControllers = require('../controllers/userControllers');
const collectionControllers = require('../controllers/collectionControllers');
const vinylControllers = require('../controllers/vinylControllers');
const reviewControllers = require('../controllers/reviewControllers');
const searchControllers = require('../controllers/searchControllers');
const auth = require("../middleware/auth");
const upload = require("../middleware/upload");


routes.get('/home', collectionControllers.getCollections);

// search routes
routes.get('/search', searchControllers.search);

// collection get routes
routes.get('/collections/', collectionControllers.getCollections);
routes.get('/collections/:id', collectionControllers.getCollectionById);
// collection post routes. create collection
routes.get('/create/collections', auth, collectionControllers.getCreateCollection);
routes.post('/create/collections',[auth, upload], collectionControllers.createCollection);

// review routes.
routes.get('/collections/:id/reviews', reviewControllers.getReviewsByCollectionId);
routes.post('/collections/:id/reviews', auth, reviewControllers.addReviewToCollection);

// like routes
routes.post('/collections/:collection_id/like/:user_id', auth, collectionControllers.likeCollection);

// auth routes
routes.get('/login', authControllers.getSingIn);
routes.post('/login', authControllers.signIn);
routes.get('/logout', authControllers.signOut);
routes.get('/register', authControllers.getRegister);
routes.post('/register', authControllers.register);

// user routes
routes.get('/users/:username', userControllers.getUserCollections);

routes.get('/profile/:username', auth, userControllers.getUserProfile);
routes.get('/profile/:username/collections/:id', auth, userControllers.getUserCollectionById);
// get user vinyls
routes.get('/profile/:username/vinyls', auth, userControllers.getUserVinyls);
// delete user vinyl
routes.post('/profile/:username/vinyls/:id', auth, userControllers.deleteUserVinyl);
routes.post('/profile/:username/collections/:id', auth, userControllers.deleteUserCollection);

// vinyl routes
routes.get('/vinyls/:id', vinylControllers.getVinylById);

routes.get('/create/vinyls', auth, vinylControllers.getCreateVinyl);
routes.post('/create/vinyl', [auth, upload] , vinylControllers.createVinyl);
// to remove vinyl from collection
routes.post('/remove/vinyl/:collection_id/:vinyl_id', auth, vinylControllers.removeVinylFromCollection);
// to add vinyl to collection
routes.post('/add/vinyl/:collection_id/:vinyl_id', auth, vinylControllers.addVinylToCollection);


module.exports = routes;