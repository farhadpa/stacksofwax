const Vinyl = require('../models/vinyl');
const Collection = require('../models/collection');

const getVinylById = async (id) => {
    try {
        const vinyl = await Vinyl.findByPk(id, {include : ['songs', 'genres']});
        return vinyl;
    } catch (err) {
        console.error(err.message);
    }
};

const createNewVinyl = async (vinyl_name, vinyl_desc, image, collection_id) => {
    try {
        const vinyl = await Vinyl.create({
            vinyl_name: vinyl_name,
            vinyl_desc: vinyl_desc,
            image: image,
        });
        const collection = await Collection.findByPk(collection_id);
        await vinyl.addCollection(collection);
        return vinyl;
    } catch (err) {
        console.error(err.message);
    }
};

module.exports = {
    getVinylById,
    createNewVinyl,
};