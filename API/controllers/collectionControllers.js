const { getCollections, 
        getCollectionById, 
        getReviewsByCollectionId, 
        getReviewById } = require("../services/collectionServices");


const allCollections = async (req, res) => {
    try {
        const collections = await getCollections();
        res.json({ message: "success", collections: collections });
    } catch (err) {
        console.error(err.message);
    }
};

const collectionById = async (req, res) => {
    const id = req.params.id;
    try {
        const { collection, vinyls } = await getCollectionById(id);
        res.json({ message: "success", collection: collection, vinyls: vinyls });
    } catch (err) {
        console.error(err.message);
    }
};

const reviewsByCollectionId = async (req, res) => {
    try {
        const reviews = await getReviewsByCollectionId(req.params.id);
        res.json({ message: "success", reviews: reviews });
    } catch (err) {
        console.error(err.message);
    }
};

const reviewById = async (req, res) => {
    try {
        let collection_id = req.params.id;
        let review_id = req.params.review_id;
        const review = await getReviewById(collection_id, review_id);
        res.json({ message: "success", review: review });
    } catch (err) {
        console.error(err.message);
    }
};


module.exports = {
    allCollections,
    collectionById,
    reviewsByCollectionId,
    reviewById
};