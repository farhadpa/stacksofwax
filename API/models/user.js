const sequelize = require('../db');
const { DataTypes } = require('sequelize');
const bcrypt = require('bcrypt');

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
        set(value) {
            const salt = bcrypt.genSaltSync(10);
            const hash = bcrypt.hashSync(value, salt);
            this.setDataValue('password', hash);
        }
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