const axios = require('axios');


const getUserCollections = async (req, res) => {
    try {
        let response = await axios.get(`http://localhost:4000/users/${req.params.username}`, {withCredentials: true});
        let data = response.data;
        console.log(data);
        res.render('user', {data: data});
    } catch (error) {
        console.log(error.message);
    }
};

const getSingIn = async (req, res) => {
    try {
        res.render('login');
    } catch (error) {
        console.log(error.message);
    } 
};

const signIn = async (req, res) => {
    try {
        let endpoint = 'http://localhost:4000/users/login';
        let response = await axios.post(endpoint, req.body, {withCredentials: true});
        console.log(response.headers['set-cookie'][0].split(';')[0].split('=')[1]);

        res.cookie('connect.sid' , response.headers['set-cookie'][0].split(';')[0].split('=')[1], {maxAge: 36000000, httpOnly: true});
        // res.cookie(JSON.parse(response.headers))
        res.send('login success');
        // res.redirect('/collections');
    } catch (error) {
        console.log(error.message);
    }
}

const getRegister = async (req, res) => {
    try {
        res.render('register');
    } catch (error) {
        console.log(error.message);
    }
};

const register = async (req, res) => {
    try {
        let endpoint = 'http://localhost:4000/users/register';
        let response = await axios.post(endpoint, req.body, {withCredentials: true});
        res.redirect('/collections');
    } catch (error) {
        console.log(error.message);
    }
};

module.exports = {
    getSingIn,
    signIn,
    getRegister,
    register,
    getUserCollections
}