const express = require("express");
const router = express.Router();

router.get("/", (req, res) => {
    try {
        res.json("Hello World");
    } catch (err) {
        console.error(err.message);
    }   
});


module.exports = router;