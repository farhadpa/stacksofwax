const { getVinylById } = require("../services/vinylServices");

const vinylById = async (req, res) => {
    try {
        const vinyl = await getVinylById(req.params.id);
        res.json({ message: "success", vinyl: vinyl });
    } catch (err) {
        console.error(err.message);
    }
};

module.exports = {
    vinylById,
};