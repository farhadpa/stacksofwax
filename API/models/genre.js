const sequelize = require('./dbConn');
const { DataTypes } = require('sequelize');

const Genre = sequelize.define('genre', {
    genre_id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true,
    },
    genre_name: {
        type: DataTypes.STRING,
        allowNull: false,
    },
});

Genre.associate = (models) => {
    Genre.belongsToMany(models.Vinyl, { 
        through: models.Vinyl_Genre,
        foreignKey: 'genre_id',
    });
};

// Genre.sync({ alter: true });

module.exports = Genre;