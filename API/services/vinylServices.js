const Vinyl = require('../models/vinyl');

const getVinylById = async (id) => {
    try {
        const vinyl = await Vinyl.findByPk(id, {include : ['songs', 'genres']});
        return vinyl;
    } catch (err) {
        console.error(err.message);
    }
};

module.exports = {
    getVinylById,
};