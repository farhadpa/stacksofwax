const sequelize = require('./dbConn');
const { DataTypes } = require('sequelize');

const Collection_Vinyl = sequelize.define('collection_vinyl', {
    collection_vinyl_id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true,
    },
    collection_id: {
        type: DataTypes.INTEGER,
        allowNull: false,
    },
    vinyl_id: {
        type: DataTypes.INTEGER,
        allowNull: false,
    },
});

module.exports = Collection_Vinyl;