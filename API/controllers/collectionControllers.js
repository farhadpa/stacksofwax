const { getCollections, getCollectionById } = require("../services/collectionServices");


const allCollections = async (req, res) => {
    try {
        const collections = await getCollections();
        res.json({ message: "successfull", collections: collections });
    } catch (err) {
        console.error(err.message);
    }
};

const collectionById = async (req, res) => {
    const id = req.params.id;
    try {
        const collection = await getCollectionById(id);
        res.json({ message: "success", collection: collection });
    } catch (err) {
        console.error(err.message);
    }
};



module.exports = {
    allCollections,
    collectionById,
};