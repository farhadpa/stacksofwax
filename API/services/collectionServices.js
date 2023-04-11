const query = require("../db");

// get all collections.
const getCollections = async () => {
    try {
        let sql = `SELECT * FROM collection`;
        const collections = await query(sql);;
        return collections;
    } catch (err) {
        console.error(err.message);
    }
};

const getCollectionById = async (id) => {
    try {
        let sql = `SELECT * FROM collection WHERE collection_id = ?;
        SELECT * FROM vinyl 
              LEFT JOIN collection_vinyl USING (vinyl_id)
              WHERE collection_id = ?;`;
        const result = await query(sql, [id, id]);
        const collection = result[0];
        const vinyls = result[1];
        return {collection, vinyls};
    } catch (err) {
        console.error(err.message);
    }

};

const getReviewsByCollectionId = async (id) => {
    try {
        let sql = `SELECT * FROM review WHERE collection_id = ?;`;
        const reviews = await query(sql, [id]);
        return reviews;
    } catch (err) {
        console.error(err.message);
    }
};

const getReviewById = async (collection_id, review_id) => {
    try {
        let sql = `SELECT * FROM review WHERE collection_id = ? AND review_id = ?;`;
        const review = await query(sql, [collection_id, review_id]);
        return review;
    } catch (err) {
        console.error(err.message);
    }
};

module.exports = {
    getCollections,
    getCollectionById,
    getReviewsByCollectionId,
    getReviewById
};


