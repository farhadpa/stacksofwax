const express = require('express');
const app = express();
const homeRoute = require('./routes/home');

app.use('/', homeRoute);

app.listen(process.env.PORT || 4000, () => {
  console.log('Server is running');
});