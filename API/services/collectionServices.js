const Collection = require("../models/collection");
const User = require("../models/user");
const Vinyl = require("../models/vinyl");
const Genre = require("../models/genre");


// get all collections.
const getCollections = async () => {
    try {
        const collections = await Collection.findAll({
            include: [
                {
                model: User,
                as: 'users',
                attributes: ['first_name', 'last_name', 'username']
                }
            ]
    });
        return collections;
    } catch (err) {
        console.error(err.message);
    }
};

const getCollectionById = async (id) => {
    try {
        const collection = await Collection.findByPk(id , 
            {include: [
                    { model: User, as: 'users', attributes: ['first_name', 'last_name', 'username'] },
                    { model: Vinyl, as: 'vinyls', 
                        include : [
                         {model: Genre, as: 'genres'} 
                        ]
                    },
                ]
            }        
        );
        return collection;
    } catch (err) {
        console.error(err.message);
    }
};

const createNewCollection = async (collection_name, collection_desc, image, user_id) => {
    try {
        const newCollection = await Collection.create({
            collection_name: collection_name,
            collection_desc: collection_desc,
            image: image,
            user_id: user_id
        });
        return newCollection;
    } catch (err) {
        console.error(err.message);
    }
};

const updateCollection = async (attributes, collection_id) => {
    try {
        const updatedCollection = await Collection.update(attributes, {
            where: {
                collection_id : collection_id
            }
        });
        return updatedCollection;
    } catch (err) {
        console.error(err.message);
    }
};

const removeVinylFromCollection = async (collection_id, vinyl_id) => {
    try {
        let collection = await Collection.findByPk(collection_id);
        let vinyl = await Vinyl.findByPk(vinyl_id);
        await collection.removeVinyl(vinyl);
        const collectionAfterRemove = await getCollectionById(collection_id);
        return collectionAfterRemove;
    } catch (err) {
        console.error(err.message);
    }
};

const addVinylToCollection = async (collection_id, vinyl_id) => {
    try {
        let collection = await Collection.findByPk(collection_id);
        let vinyl = await Vinyl.findByPk(vinyl_id);
        await collection.addVinyl(vinyl);
        const collectionAfterAdd = await getCollectionById(collection_id);
        return collectionAfterAdd;
    } catch (err) {
        console.error(err.message);
    }
};

const deleteCollectionById = async (collection_id) => {
    try {
        const deletedCollection = await Collection.destroy({
            where: {
                collection_id: collection_id
            }
        });
        return deletedCollection;
    } catch (err) {
        console.error(err.message);
    }
};


module.exports = {
    getCollections,
    getCollectionById,
    createNewCollection,
    updateCollection,
    removeVinylFromCollection,
    addVinylToCollection,
    deleteCollectionById,
};
