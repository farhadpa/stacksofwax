const axios = require('axios');


const getVinylById = async (req, res) => {
    const id = req.params.id;
    const endpoint = `http://localhost:4000/vinyls/${id}`;
    const response = await axios.get(endpoint, { withCredentials: true });
    const data = response.data;
    res.render('vinyl', { data });
};

const getCreateVinyl = async (req, res) => {
    res.render('createVinyl');
};

const createVinyl = async (req, res) => {
    console.log(req.body, req.file);
    req.body.image = '/uploads/' + req.file.filename;
    req.body.user_id = req.session.user.user_id;
    const endpoint = `http://localhost:4000/create/vinyls`;
    const response = await axios.post(endpoint, req.body, { withCredentials: true });
    res.redirect(`/users/${req.session.user.username}`);
    // res.render('createVinyl');

};

module.exports = {
    getVinylById,
    getCreateVinyl,
    createVinyl,
};