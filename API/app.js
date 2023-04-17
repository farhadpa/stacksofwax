require('dotenv').config();
const express = require('express');
const app = express();
const session = require('express-session');
const cookieParser = require('cookie-parser');
const associate = require('./models/models');
const cors = require('cors');

const routes = require('./routes/routes');

app.use(cookieParser());
app.use(session({
  secret: process.env.SESSION_SECRET,
  resave: false,
  saveUninitialized: true,
  // SameSite:'Lax',
  age: 1000 * 60 * 60 * 1, // 1 hour
  // cookie: {
  //     httpOnly: false, 
  //     secure: false,
  //     sameSite: 'Lax',
  // }
}));

app.use(express.urlencoded({ extended: true }));
app.use(express.json());
app.use(cors({
    origin: 'http://127.0.0.1:3000',
    credentials: true,
    exposedHeaders:'*',
}));
app.use(routes);

// initialize models associations.
associate();

module.exports = app;
