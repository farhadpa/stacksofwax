const axios = require('axios');

const getSingIn = async (req, res) => {
    try {
        res.render('login', {error: ''});
    } catch (error) {
        console.log(error.message);
    } 
};

const signIn = async (req, res) => {
    try {
        let endpoint = 'http://localhost:4000/users/login';
        let response = await axios.post(endpoint, req.body, {withCredentials: true});
        if (response.data.message === 'successfully logged in.') {
            req.session.user = response.data.user;
            req.session.auth = true;
            res.redirect('/users/' + req.session.user.username);
        } else {
            res.render('login', {error: response.data.message});
        }
    } catch (error) {
        console.log(error.message);
    }
}

const signOut = async (req, res) => {
    try {
        req.session.destroy();
        res.redirect('/login');
    } catch (error) {
        console.log(error.message);
    }
};

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
    signOut,
    getRegister,
    register,
}