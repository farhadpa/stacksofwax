require('dotenv').config();
const express = require('express');
const app = express();
const cookieParser = require('cookie-parser');
const session = require('express-session');
const routes = require('./routes/routes');

app.set('view engine', 'ejs');
app.use(express.static(__dirname + '/public/'));
// app.use(express.static(__dirname + '/uploads/'));

app.use(cookieParser());
app.use(express.urlencoded({ extended: true }));
app.use(session({
  secret: process.env.SESSION_SECRET,
  resave: false,
  saveUninitialized: true,
  age: 1000 * 60 * 60 * 1, // 1 hour
}));
app.use((req, res, next) => {
    res.locals.isAuthenticated = req.session.auth;
    res.locals.user = req.session.user;
    next();
});
app.use(routes)
app.listen(3000, () => {
    console.log('Server started on port 3000');
});
