const express = require('express');
const app = express();
const cookieParser = require('cookie-parser');
const routes = require('./routes/routes');

app.set('view engine', 'ejs');
app.use(express.static(__dirname + '/public'));

app.use(cookieParser());
app.use(express.urlencoded({ extended: true }));
app.use(routes)
app.listen(3000, () => {
    console.log('Server started on port 3000');
});
