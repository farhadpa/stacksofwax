const express = require("express");
const router = express.Router();
const dbConn = require("../db");
// for validating user input.
const Joi = require("joi");
// for hashing passwords.
const bcrypt = require("bcrypt");



// route to register a new user.
router.post("/", (req, res) => {
    // validate user input.
    const { error } = validateUser(req.body);
    if (error) return res.status(400).send(error.details[0].message);
    try {
        // check if username already exists.
        let sql = `select * from user where username = ?;`;
        dbConn.query(sql, [req.body.username], (err, result) => {
            if (err) return console.log(err.message);
            if (result.length > 0) {
                res.json({ message: "username already exists" });
            // if username doesn't exist, create a new user.
            } else {
                // hash the password.
                const saltRounds = 10;
                const salt = bcrypt.genSaltSync(saltRounds);
                const hashedPassword = bcrypt.hashSync(req.body.password, salt);
                // create a new user.
                sql = `INSERT INTO user (username, password, first_name, last_name, email) VALUES (?, ?, ?, ?, ?);`;
                dbConn.query(sql, [req.body.username, hashedPassword, req.body.first_name, req.body.last_name, req.body.email], (err, result) => {
                    if (err) return console.log(err.message);
                    console.log(result);
                    res.json({ message: "success" });
                });
            }
        });
    } catch (err) {
        console.error(err.message);
    }
});

// function to validate user input when registering.
function validateUser(user) {
    const schema = Joi.object({
        username: Joi.string().min(3).required(),
        password: Joi.string().min(3).required(),
        first_name: Joi.string().min(3).required(),
        last_name: Joi.string().min(3).required(),
        email: Joi.string().email().required()
    });
    return schema.validate(user);
};


// TODO: handle object not found errors in all routes.

// router.get("/:id", (req, res) => {
//     try {
//         let sql = `SELECT * FROM user WHERE user_id = ?;
//                    SELECT * FROM collection where user_id = ?;`;
//         dbConn.query(sql, [req.params.id, req.params.id], (err, result) => {
//             if (err) return console.log(err.message);
//             let user = result[0];
//             let collections = result[1];
//             res.json({ message: "success", user: user, collections: collections });
//         });
//     } catch (err) {
//         console.error(err.message);
//     }
// });


module.exports = router;