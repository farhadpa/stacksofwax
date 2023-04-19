require('dotenv').config();
const express = require('express');
const app = express();
const associate = require('./models/models');

const routes = require('./routes/routes');



app.use(express.urlencoded({ extended: true }));
app.use(express.json());
app.use(routes);

// initialize models associations.
associate();

module.exports = app;
