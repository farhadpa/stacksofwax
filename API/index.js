require('dotenv').config();
const express = require('express');
const app = express();
const mysql = require('mysql');
const homeRoute = require('./routes/home');


app.use('/', homeRoute);

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

app.set('db', connection);

connection.getConnection((err) => {
    if (err) return console.log(err.message);
    console.log("Connected to the MySQL server.");
});

app.listen((process.env.PORT || 4004), () => {
  console.log(`Server is running on ${process.env.PORT || 4004}`);
});