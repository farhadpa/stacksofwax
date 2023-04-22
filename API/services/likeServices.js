const Like = require('../models/like');
const Collection = require('../models/collection');

const getLikesByCollectionIdAndUserId = async (collection_id, user_id) => {
    try {
        const likes = await Like.findAll({
            where: {
                collection_id: collection_id,
                user_id: user_id
            }
        });
        if (likes.length === 0) {
            const newLike = await Like.create({
                collection_id: collection_id,
                user_id: user_id
            });
            // count likes for collection
            const likes = await Like.findAll({
                where: {
                    collection_id: collection_id
                }
            });
            let countAdded = likes.length;
            const updatedCollection = await Collection.update({likes_count: countAdded}, {
                where: {
                    collection_id: collection_id
                }
            });
            return countAdded;
        } else {
            const deleteLike = await Like.destroy({
                where: {
                    collection_id: collection_id,
                    user_id: user_id
                }
            });
            // count likes for collection
            const likes = await Like.findAll({
                where: {
                    collection_id: collection_id
                }
            });
            let countReduced = likes.length;
            const updatedCollection = await Collection.update({likes_count: countReduced}, {
                where: {
                    collection_id: collection_id
                }
            });
            return countReduced;

        }
        
    } catch (err) {
        console.error(err.message);
    }
};

module.exports = {
    getLikesByCollectionIdAndUserId,
};