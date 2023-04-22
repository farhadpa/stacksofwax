// this module is to initiate the associations between the models

const sequelize = require("../db");
const User = require("./user");
const Genre = require("./genre");
const Collection = require("./collection");
const Review = require("./review");
const Vinyl = require("./vinyl");
const Song = require("./song");
const Collection_Vinyl = require("./collection_vinyl");
const Vinyl_Genre = require("./vinyl_genre");
const Like = require("./like");


const models = {
    User : User,
    Genre : Genre,
    Collection : Collection,
    Review : Review,
    Vinyl : Vinyl,
    Song : Song,
    Collection_Vinyl : Collection_Vinyl,
    Vinyl_Genre : Vinyl_Genre,
    Like : Like,
}

// to initiate the associations
const associate = () => {
Object.keys(models).forEach((modelName) => {
    if (models[modelName].associate) {
        models[modelName].associate(models);
    }
});
};
sequelize.sync();

module.exports = associate;