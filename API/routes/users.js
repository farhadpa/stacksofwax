const express = require("express");
const router = express.Router();
const dbConn = require("../db");

// TODO: handle object not found errors in all routes.

router.get("/", (req, res) => {
    try {
        let sql = `SELECT * FROM user;`;
        dbConn.query(sql, (err, result) => {
            if (err) return console.log(err.message);
            let users = result;
            res.json({message: "success", users: users});
        });
    } catch (err) {
        console.error(err.message);
    }   
});

router.get("/:id", (req, res) => {
    try {
        let sql = `SELECT * FROM user WHERE user_id = ?;
                   SELECT * FROM collection where user_id = ?;`; 
        dbConn.query(sql, [req.params.id, req.params.id], (err, result) => {
            if (err) return console.log(err.message);
            let user = result[0];
            let collections = result[1];
            res.json({message: "success", user: user, collections: collections});
        });
    } catch (err) {
        console.error(err.message);
    }   
});


module.exports = router;