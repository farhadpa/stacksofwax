const sequelize = require('../db');
const { DataTypes } = require('sequelize');

const Collection = sequelize.define('collection', {
    collection_id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true,
    },
    collection_name: {
        type: DataTypes.STRING,
        allowNull: false,
        validate: {
            min: 1,
        }
    },
    collection_desc: {
        type: DataTypes.TEXT,
        allowNull: true,
    },
    image: {
        type: DataTypes.STRING,
        allowNull: true,
    },
    likes: {
        type: DataTypes.INTEGER,
        allowNull: false,
        defaultValue: 0,
    },
    user_id: {
        type: DataTypes.INTEGER,
        allowNull: false,
    },
});

Collection.associate = (models) => {
    Collection.belongsTo(models.User, {
        foreignKey: 'user_id',
        as: 'users',
    });
    Collection.hasMany(models.Review, {
        foreignKey: 'collection_id',
        as: 'reviews',
        onDelete: 'cascade',
        onUpdate: 'cascade',
    });
    Collection.belongsToMany(models.Vinyl, {
        through: models.Collection_Vinyl,
        foreignKey: 'collection_id',
        otherKey: 'vinyl_id',
    });
    // Collection.hasMany(models.Collection_Vinyl, {
    //     foreignKey: 'collection_id',
    // });
};

// Collection.sync({ alter: true });

module.exports = Collection;