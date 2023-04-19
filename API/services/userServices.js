const User = require("../models/user");


const getCollectionsByUserName = async (username) => {
    try {
        const user = await User.findOne({
            where: {
                username: username
            },
            attributes: ['user_id', 'username', 'first_name', 'last_name', 'email'],
            include: 'collections'
        });
        return user;
    } catch (err) {
        console.error(err.message);
    }
};

module.exports = {
    getCollectionsByUserName
};