const sequelize = require('../db');
const { DataTypes } = require('sequelize');

const Like = sequelize.define('like', {
    like_id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true,
    },
    collection_id: {
        type: DataTypes.INTEGER,
        allowNull: false,
    },
    user_id: {
        type: DataTypes.INTEGER,
        allowNull: false,
    },
});

Like.associate = (models) => {
    Like.belongsTo(models.Collection, {
        foreignKey: 'collection_id',
    });
    Like.belongsTo(models.User, {
        foreignKey: 'user_id',
    });
};

// Review.sync({ alter: true });

module.exports = Like;