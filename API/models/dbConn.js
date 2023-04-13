require('dotenv').config();
const Sequelize = require('sequelize');


const sequelize = new Sequelize('sampleStacksofwax', process.env.DB_USER, process.env.DB_PASSWORD, {
    host: process.env.DB_HOST,
    dialect: 'mysql',
    port: process.env.DB_PORT,
    pool: {
        max: 10,
        min: 0,
        acquire: 30000,
        idle: 10000
    },
    define: {
        timestamps: false,
        freezeTableName: true
    },
});

sequelize.authenticate()
    .then(console.log('Connected to database'))
    .catch(err => console.log(err));

// sequelize.sync({ alter: true });

module.exports = sequelize;