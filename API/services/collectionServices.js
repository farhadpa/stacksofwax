const Collection = require("../models/collection");

// get all collections.
const getCollections = async () => {
    try {
        const collections = await Collection.findAll();
        return collections;
    } catch (err) {
        console.error(err.message);
    }
};

const getCollectionById = async (id) => {
    try {
        const collection = await Collection.findByPk(id , {include: 'vinyls'});
        const vinyls = await collection.getVinyls();
        return {collection, vinyls};
    } catch (err) {
        console.error(err.message);
    }
};

const getReviewsByCollectionId = async (id) => {
    try {
        const collection = await Collection.findByPk(id , {include: 'reviews'});
        const reviews = await collection.getReviews();
        return reviews;
    } catch (err) {
        console.error(err.message);
    }
};


module.exports = {
    getCollections,
    getCollectionById,
    getReviewsByCollectionId,
};


