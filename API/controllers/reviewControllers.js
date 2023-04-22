const { getReviewsByCollectionId, createNewReview } = require("../services/reviewServices.js");


const reviewsByCollectionId = async (req, res) => {
    try {
        const reviews = await getReviewsByCollectionId(req.params.id);
        res.json({ message: "success", reviews: reviews , collection_id: req.params.id});
    } catch (err) {
        console.error(err.message);
    }
};

const createReviewForCollection = async (req, res) => {
    try {
        const { collection_id, user_id, review_text } = req.body;
        const newReview = await createNewReview(collection_id, user_id, review_text);
        res.json({ message: "success", review: newReview });
    } catch (err) {
        console.error(err.message);
    }
};


module.exports = {
    reviewsByCollectionId,
    createReviewForCollection,
    // reviewById,
};