const axios = require('axios');


const getVinylById = async (req, res) => {
    const id = req.params.id;
    const endpoint = `http://localhost:4000/vinyls/${id}`;
    const response = await axios.get(endpoint, { withCredentials: true });
    const data = response.data;
    res.render('vinyl', { data });
};

module.exports = {
    getVinylById
};