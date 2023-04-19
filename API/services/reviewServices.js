const Review = require('../models/review.js');
const User = require('../models/user.js');

const getReviewsByCollectionId = async (id) => {
    try {
        const reviews = await Review.findAll({
            where: {
                collection_id: id
                },
            include : [
                { model : User, attributes : ['user_id', 'username', 'first_name', 'last_name'] }
            ]
            }
        );
        return reviews;
    } catch (err) {
        console.error(err.message);
    }
};

module.exports = {
    getReviewsByCollectionId,
};