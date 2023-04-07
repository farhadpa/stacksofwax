const express = require('express');
const app = express();
const axios = require('axios');

app.set('view engine', 'ejs');
app.use(express.static('public'));

app.get('/', (req, res) => {
    let endpoint = 'http://localhost:4000';
    axios.get(endpoint).then((response) => {
        let data = response.data;
        res.render('index', {data: data});
    }).catch((error) => {
        console.log(error.message);
    });
});

app.listen(3900, () => {
    console.log('Server started on port 3900');
});
