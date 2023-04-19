const sequelize = require('../db');
const { DataTypes } = require('sequelize');

const Review = sequelize.define('review', {
    review_id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true,
    },
    review_text: {
        type: DataTypes.TEXT,
        allowNull: false,
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

Review.associate = (models) => {
    Review.belongsTo(models.Collection, {
        foreignKey: 'collection_id',
    });
    Review.belongsTo(models.User, {
        foreignKey: 'user_id',
    });
};

// Review.sync({ alter: true });

module.exports = Review;