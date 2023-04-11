
require('dotenv').config();
const mysql = require('mysql');
const util = require('util');


const connection = mysql.createPool({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_NAME,
    waitForConnections: true,
    connectionLimit: 10,
    queueLimit: 10,
    port: process.env.DB_PORT,
    multipleStatements: true
});


connection.getConnection((err) => {
    if (err) return console.log(err.message);
    console.log("Connected to the MySQL server.");
});

const query = util.promisify(connection.query).bind(connection);

module.exports = query;
