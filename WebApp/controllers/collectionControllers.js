const axios = require('axios');

const getCollections = async (req, res) => {
    try {
        let response = await axios.get('http://localhost:4000/collections', {withCredentials: true});
        let data = response.data;
        res.render('index', {data: data});
    // res.send(data);
    } catch (error) {
        console.log(error.message);
    } 
};

const getCollectionById = async (req, res) => {
    console.log(req.params);
    let id = req.params.id;
    let endpoint = `http://localhost:4000/collections/${id}`;
    try {
        let response = await axios.get(endpoint, {withCredentials: true});
        let data = response.data;
        console.log(data);
        res.render('collection', {data: data});
    } catch (error) {
        console.log(error.message);
    }
};




module.exports = {
    getCollections,
    getCollectionById
}