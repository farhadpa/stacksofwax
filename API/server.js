const app = require('./app');

app.listen((process.env.PORT || 4004), () => {
    console.log(`Server is running on ${process.env.PORT || 4004}`);
  });