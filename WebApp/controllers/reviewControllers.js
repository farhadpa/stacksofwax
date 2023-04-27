const axios = require('axios');

const getReviewsByCollectionId = async (req, res) => {
    try {
        let endpoint = `http://${process.env.ENDPOINT_ADDRESS}/collections/${req.params.id}/reviews`;
        let response = await axios.get(endpoint, {withCredentials: true});
        res.render('reviews', {data: response.data});
    } catch (error) {
        console.log(error.message);
    }
};

const addReviewToCollection = async (req, res) => {
    req.body.user_id = req.session.user.user_id;
    req.body.collection_id = req.params.id;
    try {
        let endpoint = `http://${process.env.ENDPOINT_ADDRESS}/create/review`;
        let response = await axios.post(endpoint, req.body, {withCredentials: true});
        res.redirect(`/collections/${req.params.id}/reviews`);
    } catch (error) {
        console.log(error.message);
    }
};

module.exports = {
    getReviewsByCollectionId,
    addReviewToCollection,
};