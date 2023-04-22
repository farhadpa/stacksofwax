const {getLikesByCollectionIdAndUserId} = require('../services/likeServices');

const likeForCollectionByUser = async (req, res) => {
    collection_id = req.params.collection_id;
    user_id = req.params.user_id;
    try {
        const likes = await getLikesByCollectionIdAndUserId(collection_id, user_id);
        res.json({message: "success", likes: likes});
    } catch (err) {
        console.error(err.message);
    }
};

module.exports = {
    likeForCollectionByUser,
}