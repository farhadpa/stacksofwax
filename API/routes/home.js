const express = require("express");
const router = express.Router();
const dbConn = require("../db");


router.get("/", (req, res) => {
    try {
        let sql = `SELECT * FROM collection;
        SELECT * FROM collection WHERE user_id=9 ;`
        dbConn.query(sql, (err, result) => {
            if (err) return console.log(err.message);
            res.json(result);
        });
    } catch (err) {
        console.error(err.message);
    }   
});


module.exports = router;