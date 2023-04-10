require('dotenv').config();
const express = require('express');
const app = express();
const session = require('express-session');
const cookieParser = require('cookie-parser');

const collectionsRoute = require('./routes/collections');
const usersRoute = require('./routes/users');
const authRoute = require('./routes/auth');

app.use(cookieParser());
app.use(session({
  secret: process.env.SESSION_SECRET,
  resave: false,
  saveUninitialized: true,
  age: 1000 * 60 * 60 * 1, // 1 hour
}));
app.use(express.urlencoded({ extended: true }));

app.use('/collections', collectionsRoute);
app.use('/users', usersRoute);
app.use('/auth', authRoute);

app.listen((process.env.PORT || 4004), () => {
  console.log(`Server is running on ${process.env.PORT || 4004}`);
});