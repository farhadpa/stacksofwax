const sequelize = require('./dbConn');
const { DataTypes } = require('sequelize');
// const model = require('./model'); 

const User = sequelize.define('user', {
    user_id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true,
    },
    username: {
        type: DataTypes.STRING,
        unique: true,
        allowNull: false,
        validate: {
            min: 3,
            max: 20,
        }
    },
    password: {
        type: DataTypes.STRING(1024),
        allowNull: false,
        validate: {
            min: 6,
        },
    },
    email: {
        type: DataTypes.STRING,
        allowNull: false,
        unique: true,
        validate: {
            isEmail: true,
        },
    },
    first_name: {
        type: DataTypes.STRING,
        allowNull: false,
        validate: {
            min: 3,
            max: 20,
        }
    },
    last_name: {
        type: DataTypes.STRING,
        allowNull: false,
        validate: {
            min: 3,
            max: 50,
        }
    },
});

User.associate = (models) => {
    User.hasMany(models.Collection, {
        foreignKey: 'user_id',
        as: 'collections',
        onDelete: 'cascade',
        onUpdate: 'cascade',
    });
};

// User.sync({ alter: true });

module.exports = User;