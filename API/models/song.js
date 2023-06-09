const sequelize = require('../db');
const { DataTypes } = require('sequelize');

const Song = sequelize.define('song', {
    song_id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true,
    },
    song_name: {
        type: DataTypes.STRING,
        allowNull: false,
        validate: {
            min: 1,
        }
    },
    song_desc: {
        type: DataTypes.TEXT,
        allowNull: true,
    },
    song_artist: {
        type: DataTypes.STRING,
        allowNull: false,  
    },
});

Song.associate = (models) => {
    Song.belongsTo(models.Vinyl, {
        foreignKey: 'vinyl_id',  
    });
};

// Song.sync({ alter: true });

module.exports = Song;
