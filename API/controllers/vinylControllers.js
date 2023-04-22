const { 
    getVinylById, 
    createNewVinyl, 
    getGenres,
    deleteVinylById 
} = require("../services/vinylServices");

const vinylById = async (req, res) => {
    try {
        const vinyl = await getVinylById(req.params.id);
        res.json({ message: "success", vinyl: vinyl });
    } catch (err) {
        console.error(err.message);
    }
};

const createVinyl = async (req, res) => {
    // const songsList = req.body.songs;
    // const genresList = req.body.genres;
    // let songs = [];
    // genresList.forEach(genre => {

    // });
    const attributes = {
        vinyl_name: req.body.vinyl_name,
        vinyl_desc: req.body.vinyl_desc,
        image: req.body.image,
        user_id: req.body.user_id,

    };
    let genres = req.body.genres;
    if (typeof genres === "string") {
        genres = [genres];
    }
    const songs = req.body.songs;
    console.log(attributes);
    console.log(genres);
    console.log(songs);
    try {
        const vinyl = await createNewVinyl(attributes, genres, songs);
        res.json({ message: "success", vinyl: vinyl });
    } catch (err) {
        console.error(err.message);
    }
};

const deleteVinyl = async (req, res) => {
    const id = req.params.id;
    try {
        const vinyl = await deleteVinylById(id);
        res.json({ message: "success", vinyl: vinyl });
    } catch (err) {
        console.error(err.message);
    }
};

const getAllGenres = async (req, res) => {
    try {
        const genres = await getGenres();
        res.json({ message: "success", genres: genres });
    } catch (err) {
        console.error(err.message);
    }
};


module.exports = {
    vinylById,
    createVinyl,
    getAllGenres,
    deleteVinyl,
};