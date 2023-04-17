const express = require('express');
const routes = express.Router();

const testController = require('../controllers/test');
const userControllers = require('../controllers/userControllers');
const collectionControllers = require('../controllers/collectionControllers');

// const auth = require("../middleware/auth");

routes.get('/test', testController.test);


routes.get('/collections/', collectionControllers.getCollections);
routes.get('/collections/:id', collectionControllers.getCollectionById);

routes.get('/login', userControllers.getSingIn);
routes.post('/login', userControllers.signIn);

routes.get('/register', userControllers.getRegister);
routes.post('/register', userControllers.register);

routes.get('/user/:username', userControllers.getUserCollections);
// routes.get('/collections/:id/reviews/:review_id', collectionControllers.reviewById);



module.exports = routes;