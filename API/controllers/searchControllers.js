const {searchService} = require('../services/searchServices');

const search = async (req, res) => {
    const {query} = req.query;
    try {
        const results = await searchService(query);
        res.status(200).json(results);
    } catch (err) {
        console.error(err.message);
        res.status(500).json({message: 'Server error'});
    }
};

module.exports = {
    search,
};