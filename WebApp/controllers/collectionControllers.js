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
    let id = req.params.id;
    let endpoint = `http://localhost:4000/collections/${id}`;
    try {
        let response = await axios.get(endpoint, {withCredentials: true});
        let data = response.data;
        res.render('collection', {data: data});
    } catch (error) {
        console.log(error.message);
    }
};

const likeCollection = async (req, res) => {
    let id = req.params.id;
    let endpoint = `http://localhost:4000/update/collections/${id}/like`;
    try {
        let response = await axios.post(endpoint, {withCredentials: true});
        res.redirect(`/collections/${id}`);
    } catch (error) {
        console.log(error.message);
    }
};

const getCreateCollection = async (req, res) => {
    res.render('createCollection');
};

const createCollection = async (req, res) => {
    console.log(req.body, req.file.path, req.file.mimetype);
    req.body.image = '/uploads/' + req.file.filename;
    req.body.user_id = req.session.user.user_id;
    console.log(req.body, 'before axios');
    try {
        let response = await axios.post('http://localhost:4000/create/collections', req.body, {withCredentials: true});
        res.redirect(`/users/${req.session.user.username}`);
    } catch (error) {
        console.log(error.message);
    }
};



module.exports = {
    getCollections,
    getCollectionById,
    likeCollection,
    createCollection,
    getCreateCollection
}