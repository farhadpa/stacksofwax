const axios = require('axios');

const getUserCollections = async (req, res) => {
    try {
        let response = await axios.get(`http://localhost:4000/users/${req.params.username}`, {withCredentials: true});
        let data = response.data;
        if (data.user === null ) {
            res.status(404).send('User not found');
        } else {
        res.render('user', {data: data});
        }
    } catch (error) {
        console.log(error.message);
    }
};

const getUserProfile = async (req, res) => {
    try {
        let response = await axios.get(`http://localhost:4000/users/${req.params.username}`, {withCredentials: true});
        let data = response.data;
        if (data.user.username === null ) {
            res.status(404).send('User not found');
        }
        res.render('profile', {data: data});
    } catch (error) {
        console.log(error.message);
    }
};

const getUserCollectionById = async (req, res) => {
    let id = req.params.id;
    let username = req.session.user.username;
    try {
        let collection = await axios.get(`http://localhost:4000/collections/${id}`, {withCredentials: true});
        let vinyls = await axios.get(`http://localhost:4000/users/${username}/vinyls`, {withCredentials: true});

        res.render('editCollection', {data: collection.data, vinyls: vinyls.data});
    } catch (error) {
        console.log(error.message);
    }
};

const getUserVinyls = async (req, res) => {
    let username = req.session.user.username;
    try {
        let response = await axios.get(`http://localhost:4000/users/${username}/vinyls`, {withCredentials: true});
        let data = response.data;
        res.render('manageVinyls', {data: data});
    } catch (error) {
        console.log(error.message);
    }
};

const deleteUserVinyl = async (req, res) => {
    let vinyl_id = req.params.id;
    let username = req.session.user.username;
    try {
        let vinyl = await axios.get(`http://localhost:4000/vinyls/${vinyl_id}`, {withCredentials: true});
        if (vinyl.data.vinyl.user_id === req.session.user.user_id) {
            let response = await axios.delete(`http://localhost:4000/delete/vinyls/${vinyl_id}`, {withCredentials: true});
            res.redirect(`/profile/${username}/vinyls`);
        } else {
            res.redirect(`/profile/${username}/vinyls`);
        }
    } catch (error) {
        console.log(error.message);
    }
};

const deleteUserCollection = async (req, res) => {
    let collection_id = req.params.id;
    let username = req.session.user.username;
    try {
        let collection = await axios.get(`http://localhost:4000/collections/${collection_id}`, {withCredentials: true});
        if (collection.data.collection.users.username === req.session.user.username) {
            let response = await axios.delete(`http://localhost:4000/delete/collections/${collection_id}`, {withCredentials: true});
            res.redirect(`/profile/${username}`);
        } else {
            res.redirect(`/profile/${username}`);
        }
    } catch (error) {
        console.log(error.message);
    }
};
module.exports = {
    getUserCollections,
    getUserProfile,
    getUserCollectionById,
    getUserVinyls,
    deleteUserVinyl,
    deleteUserCollection,
}