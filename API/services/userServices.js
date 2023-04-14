
// const query = require("../db");
const User = require("../models/user");
// const Collection = require("../models/collection");
// const sequelize = require("../db");

// create new user.
const createUser = async  (username, password, first_name, last_name, email) => {
    try {
        const user = await User.create({
            username: username,
            password: password,
            email: email,
            first_name: first_name,
            last_name: last_name,
            });
        return user;
    } catch (err) {
        console.error(err.message);
    }
};

// get user by username.
const getUserByUserName = async (username) => {
    try {
        const user = await User.findOne({
            where: {
                username: username
            },
        });
        return user;
    } catch (err) {
        console.error(err.message);
    }
};


module.exports = {
    createUser,
    getUserByUserName
};