const sequelize = require('../db');
const { DataTypes } = require('sequelize');

const Vinyl_Genre = sequelize.define('vinyl_genre', {
    vinyl_genre_id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true,
    },
    vinyl_id: {
        type: DataTypes.INTEGER,
        allowNull: false,
    },
    genre_id: {
        type: DataTypes.INTEGER,
        allowNull: false,
    },
});

module.exports = Vinyl_Genre;