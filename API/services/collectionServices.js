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

module.exports = {
    getCollections,
    getCollectionById,
    createNewCollection,
};


