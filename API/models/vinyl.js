const sequelize = require('../db');
const { DataTypes } = require('sequelize');

const Vinyl = sequelize.define('vinyl', {
    vinyl_id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true,
    },
    vinyl_name: {
        type: DataTypes.STRING,
        allowNull: false,
        validate: {
            min: 1,
        }
    },
    vinyl_desc: {
        type: DataTypes.TEXT,
        allowNull: true,
    },
    image: {
        type: DataTypes.STRING,
        allowNull: true,
    }
});


Vinyl.associate = (models) => {
    Vinyl.belongsToMany(models.Genre, { 
        through: models.Vinyl_Genre,
        foreignKey: 'vinyl_id',
        unique: false,
    });
    Vinyl.belongsToMany(models.Collection, {
        through: models.Collection_Vinyl,
        foreignKey: 'vinyl_id',
        otherKey: 'collection_id',
        unique: false,
    });
    Vinyl.hasMany(models.Song, {
        foreignKey: 'vinyl_id',
        onDelete: 'CASCADE',
        onUpdate: 'CASCADE',
        // as: 'songs',
    });
    Vinyl.belongsTo(models.User, {
        foreignKey: 'user_id',
        as: 'user',
    });
};

// Vinyl.sync({ alter: true });

module.exports = Vinyl;