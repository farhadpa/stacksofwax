const axios = require('axios');

const search = async (req, res) => {
    try {
        let endPoint = 'http://localhost:4000/search';
        let query = req.query;
        const searchResults = await axios.get(endPoint, {params: query})
        res.render('search', searchResults.data);
    } catch (error) {
        console.log(error);
    }
};

module.exports = {
    search
};