const axios = require('axios');

const getReviewsByCollectionId = async (req, res) => {
    try {
        let endpoint = `http://localhost:4000/collections/${req.params.id}/reviews`;
        let response = await axios.get(endpoint, {withCredentials: true});
        res.render('reviews', {data: response.data});
    } catch (error) {
        console.log(error.message);
    }
};

module.exports = {
    getReviewsByCollectionId,
};