const sequelize = require('./dbConn');
const { DataTypes } = require('sequelize');

const Vinyl_Song = sequelize.define('vinyl_song', {
    vinyl_song_id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true,
    },
    vinyl_id: {
        type: DataTypes.INTEGER,
        allowNull: false,
    },
    song_id: {
        type: DataTypes.INTEGER,
        allowNull: false,
    },
});

module.exports = Vinyl_Song;