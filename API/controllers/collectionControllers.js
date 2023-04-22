const { getCollections, getCollectionById, createNewCollection, updateCollection } = require("../services/collectionServices");


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

const likeCollection = async (req, res) => {
    const id = req.params.id;
    try {
        const collection = await getCollectionById(id);
        const newLikes = collection.likes_count + 1;
        console.log(newLikes)
        const updatedCollection = await updateCollection({ likes_count: newLikes }, id);
        console.log(updatedCollection);
        res.json({ message: "success", collection: updatedCollection });
    } catch (err) {
        console.error(err.message);
    }
};

module.exports = {
    allCollections,
    collectionById,
    createCollection,
    likeCollection,
};