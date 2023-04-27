const axios = require('axios');


const getVinylById = async (req, res) => {
    const id = req.params.id;
    const endpoint = `http://${process.env.ENDPOINT_ADDRESS}/vinyls/${id}`;
    const response = await axios.get(endpoint, { withCredentials: true });
    const data = response.data;
    if (data.vinyl === null) {
        res.status(404).send('Vinyl not found');
    } else {
    res.render('vinyl', { data });
    }
};

const getCreateVinyl = async (req, res) => {
    const endpoint = `http://${process.env.ENDPOINT_ADDRESS}/genres`;
    const response = await axios.get(endpoint, { withCredentials: true });
    const data = response.data;
    res.render('createVinyl', { data });
};

const createVinyl = async (req, res) => {
    req.body.image = '/uploads/' + req.file.filename;
    req.body.user_id = req.session.user.user_id;
    const endpoint = `http://${process.env.ENDPOINT_ADDRESS}/create/vinyls`;
    const response = await axios.post(endpoint, req.body, { withCredentials: true });
    res.redirect(`/profile/${req.session.user.username}`);
    // res.render('createVinyl');

};

const removeVinylFromCollection = async (req, res) => {
    const collection_id = req.params.collection_id;
    const vinyl_id = req.params.vinyl_id;
    const endpoint = `http://${process.env.ENDPOINT_ADDRESS}/delete/collections/${collection_id}/vinyl/${vinyl_id}`;
    const response = await axios.delete(endpoint, { withCredentials: true });
    const username = req.session.user.username;
    res.redirect(`/profile/${username}/collections/${collection_id}`);
};

const addVinylToCollection = async (req, res) => {
    const collection_id = req.params.collection_id;
    const vinyl_id = req.params.vinyl_id;
    const endpoint = `http://${process.env.ENDPOINT_ADDRESS}/update/collections/${collection_id}/vinyl/${vinyl_id}`;
    const response = await axios.post(endpoint, { withCredentials: true });
    const username = req.session.user.username;
    res.redirect(`/profile/${username}/collections/${collection_id}`);
};

module.exports = {
    getVinylById,
    getCreateVinyl,
    createVinyl,
    removeVinylFromCollection,
    addVinylToCollection,
};