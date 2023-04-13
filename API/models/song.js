const sequelize = require('./dbConn');
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
    Song.belongsToMany(models.Vinyl, {
        through: models.Vinyl_Song,
        foreignKey: 'song_id',
    });
};

// Song.sync({ alter: true });

module.exports = Song;
