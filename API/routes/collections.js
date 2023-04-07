const express = require("express");
const router = express.Router();
const dbConn = require("../db");

// TODO: handle object not found errors in all routes.

router.get("/", (req, res) => {
    try {
        let sql = `SELECT * FROM collection;`;
        dbConn.query(sql, (err, result) => {
            if (err) return console.log(err.message);
            let collections = result;
            res.json({message: "success", collections: collections});
        });
    } catch (err) {
        console.error(err.message);
    }   
});

router.get("/:id", (req, res) => {
    try {
        let sql = `SELECT * FROM collection WHERE collection_id = ?;
                   SELECT * FROM vinyl 
                         LEFT JOIN collection_vinyl USING (vinyl_id)
                         WHERE collection_id = ?;`;
        dbConn.query(sql, [req.params.id, req.params.id], (err, result) => {
            if (err) return console.log(err.message);
            let collection = result[0];
            let vinyls = result[1];
            res.json({message: "success", collection: collection, vinyls: vinyls});
        });
    } catch (err) {
        console.error(err.message);
    }   
});

router.get("/:id/reviews", (req, res) => {
    try {
        let sql = `SELECT * FROM review WHERE collection_id = ?;`;
        dbConn.query(sql, [req.params.id], (err, result) => {
            if (err) return console.log(err.message);
            let reviews = result;
            res.json({message: "success", reviews: reviews});
        });
    } catch (err) {
        console.error(err.message);
    }   
});

router.get("/:id/reviews/:review_id", (req, res) => {
    try {
        let sql = `SELECT * FROM review WHERE collection_id = ? AND review_id = ?;`;
        dbConn.query(sql, [req.params.id, req.params.review_id], (err, result) => {
            if (err) return console.log(err.message);
            let review = result;
            res.json({message: "success", review: review});
        });
    } catch (err) {
        console.error(err.message);
    }   
});


module.exports = router;