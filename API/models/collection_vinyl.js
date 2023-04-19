const sequelize = require('../db');
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

// Collection_Vinyl.associate = (models) => {
//     Collection_Vinyl.belongsTo(models.Collection, {
//         foreignKey: 'collection_id',
//     });
//     Collection_Vinyl.belongsTo(models.Vinyl, {
//         foreignKey: 'vinyl_id',
//     });
// };

module.exports = Collection_Vinyl;