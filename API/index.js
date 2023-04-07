require('dotenv').config();
const express = require('express');
const app = express();

const collectionsRoute = require('./routes/collections');
const usersRoute = require('./routes/users');


app.use('/collections', collectionsRoute);
app.use('/users', usersRoute);

app.listen((process.env.PORT || 4004), () => {
  console.log(`Server is running on ${process.env.PORT || 4004}`);
});