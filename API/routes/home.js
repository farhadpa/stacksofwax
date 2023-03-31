const express = require("express");
const router = express.Router();


router.get("/", (req, res) => {
    try {
        let sql = "SELECT * FROM collection";
        req.app.get('db').query(sql, (err, result) => {
            if (err) return console.log(err.message);
            res.json(result);
        });
    } catch (err) {
        console.error(err.message);
    }   
});


module.exports = router;