require('dotenv').config();
const express = require('express');
const app = express();
const session = require('express-session');
const cookieParser = require('cookie-parser');

const routes = require('./routes/routes');

app.use(cookieParser());
app.use(session({
  secret: process.env.SESSION_SECRET,
  resave: false,
  saveUninitialized: true,
  age: 1000 * 60 * 60 * 1, // 1 hour
}));

app.use(express.urlencoded({ extended: true }));

app.use(routes);

module.exports = app;
