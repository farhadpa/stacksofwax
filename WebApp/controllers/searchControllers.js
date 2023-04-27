const axios = require('axios');

const search = async (req, res) => {
    try {
        let endPoint = `http://${process.env.ENDPOINT_ADDRESS}/search`;
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