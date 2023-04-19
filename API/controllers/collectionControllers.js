const { getCollections, getCollectionById, createNewCollection } = require("../services/collectionServices");


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

const createCollection = async (req, res) => {
    // const { error } = validateCollection(req.body);
    // if (error) return res.status(400).send(error.details[0].message);
    const { collection_name, collection_desc, image, user_id } = req.body;
    try {
        const newCollection = await createNewCollection(collection_name, collection_desc, image, user_id);
        res.json({ message: "success", collection: newCollection });
    } catch (err) {
        console.error(err.message);
    }
};

module.exports = {
    allCollections,
    collectionById,
    createCollection,
};