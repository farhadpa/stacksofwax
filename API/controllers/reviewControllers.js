const { getReviewsByCollectionId } = require("../services/reviewServices.js");


const reviewsByCollectionId = async (req, res) => {
    try {
        const reviews = await getReviewsByCollectionId(req.params.id);
        res.json({ message: "success", reviews: reviews });
    } catch (err) {
        console.error(err.message);
    }
};

// const reviewById = async (req, res) => {
//     try {
//         let collection_id = req.params.id;
//         let review_id = req.params.review_id;
//         const review = await getReviewById(collection_id, review_id);
//         res.json({ message: "success", review: review });
//     } catch (err) {
//         console.error(err.message);
//     }
// };

module.exports = {
    reviewsByCollectionId,
    // reviewById,
};