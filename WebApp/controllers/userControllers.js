const axios = require('axios');

const getUserCollections = async (req, res) => {
    try {
        let response = await axios.get(`http://localhost:4000/users/${req.params.username}`, {withCredentials: true});
        let data = response.data;
        res.render('user', {data: data});
    } catch (error) {
        console.log(error.message);
    }
};

module.exports = {
    getUserCollections
}