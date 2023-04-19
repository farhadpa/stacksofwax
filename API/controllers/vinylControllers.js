const { getVinylById, createNewVinyl } = require("../services/vinylServices");

const vinylById = async (req, res) => {
    try {
        const vinyl = await getVinylById(req.params.id);
        res.json({ message: "success", vinyl: vinyl });
    } catch (err) {
        console.error(err.message);
    }
};

const createVinyl = async (req, res) => {
    const {vinyl_name, vinyl_desc, image, collection_id} = req.body;
    try {
        const vinyl = await createNewVinyl(vinyl_name, vinyl_desc, image, collection_id);
        res.json({ message: "success", vinyl: vinyl });
    } catch (err) {
        console.error(err.message);
    }
};

module.exports = {
    vinylById,
    createVinyl,
};