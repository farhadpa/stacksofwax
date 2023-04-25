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
        if (data.collection === null) {
            res.status(404).send('Collection not found');
        } else {
        res.render('collection', {data: data});
        }
    } catch (error) {
        console.log(error.message);
    }
};

const likeCollection = async (req, res) => {
    let id = req.params.collection_id;
    let user_id = req.session.user.user_id;
    let endpoint = `http://localhost:4000/collections/${id}/like/${user_id}`;
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
    req.body.image = '/uploads/' + req.file.filename;
    req.body.user_id = req.session.user.user_id;
    try {
        let response = await axios.post('http://localhost:4000/create/collections', req.body, {withCredentials: true});
        res.redirect(`/profile/${req.session.user.username}`);
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