const { getCollectionsByUserName } = require("../services/userServices");


const getUserAndCollections = async (req, res) => {
    const username = req.params.username;
    try {
        const user = await getCollectionsByUserName(username);
        res.json({ message: "success", user: user });
    } catch (err) {
        console.error(err.message);
    }
};


module.exports = {
    getUserAndCollections

};
