const express = require("express");
const router = express.Router();
const dbConn = require("../db");
// for validating user input.
const Joi = require("joi");
// for hashing passwords.
const bcrypt = require("bcrypt");



// route to login a user.
router.post("/login", (req, res) => {
    // validate user input.
    const { error } = validate(req.body);
    if (error) return res.status(400).send(error.details[0].message);
    // get the username and password from the request body.
    let username = req.body.username;
    let password = req.body.password;
    try {
        let sql = `SELECT * FROM user WHERE username = ?;`;
        dbConn.query(sql, [username], (err, result) => {
            if (err) return console.log(err.message);
            // if the username exists.
            if (result.length > 0) {
                let user = result[0];
                // compare the password with the hashed password.
                const validPassword = bcrypt.compareSync(password, user.password);
                if (validPassword) {
                    // set the session.
                    req.session.user = user;
                    res.json({ message: "successfully logged in." });
                // if the password is invalid.
                } else {
                    res.status(401).json({ message: "Invalid username or password" });
                }
            // if the username doesn't exist.
            } else {
                res.status(401).json({ message: "Invalid username or password" });
            }
        });
    } catch (err) {
        console.error(err.message);
    }
});


// route to logout a user.
router.get("/logout", (req, res) => {
    // destroy the session.
    req.session.destroy();
    res.json({ message: "successfully logged out." });
});

// function to validate user input when logging in.
function validate(req) {
    const schema = Joi.object({
        username: Joi.string().min(3).required(),
        password: Joi.string().min(3).required(),
    });
    return schema.validate(req);
};

module.exports = router;