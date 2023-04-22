const Vinyl = require('../models/vinyl');
const Collection = require('../models/collection');
const Genre = require('../models/genre');
const Song = require('../models/song');

const getVinylById = async (id) => {
    try {
        const vinyl = await Vinyl.findByPk(id, {include : ['songs', 'genres']});
        return vinyl;
    } catch (err) {
        console.error(err.message);
    }
};

const createNewVinyl = async (attributes, genres, songs) => {
    console.log(genres);
    console.log(Array.isArray(songs));
    try {
        let vinyl = await Vinyl.create(attributes);
        genres.forEach(async (genre_name) => {
            let genre = await Genre.findOne({ where: { genre_name: genre_name } });
            await vinyl.addGenre(genre);
        });
        songs.forEach(async song => {
            let newSong = await Song.create(song);
            await vinyl.addSong(newSong);
        }); 
        // const collection = await Collection.findByPk(collection_id);
        // await vinyl.addCollection(collection);
        return vinyl;
    } catch (err) {
        console.error(err.message);
    }
};

module.exports = {
    getVinylById,
    createNewVinyl,
};