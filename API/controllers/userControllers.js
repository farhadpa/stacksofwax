// for validating user input.
const Joi = require("joi");
// for hashing passwords.
const bcrypt = require("bcrypt");
const { createUser, getUserByUserName } = require("../services/userServices");


// route to register a new user.
const register = async (req, res) => {
    // validate user input.
    const { error } = validateUser(req.body);
    if (error) return res.status(400).send(error.details[0].message);

    let { username, password, first_name, last_name, email } = req.body;
    // check if the username already exists.
    const result = await getUserByUserName(username);
    if (result.length > 0) {
        res.json({ message: "username already exists" });
        // if username doesn't exist, create a new user.
    } else {
        // hash the password.
        const hashedPassword = hashPassword(password);
        // create a new user.
        const newUser = createUser(username, hashedPassword, first_name, last_name, email);
        res.json({ message: "success" });
    };
};

// route to login a user.
const signIn = async (req, res) => {
    // validate user input.
    const { error } = validate(req.body);
    if (error) return res.status(400).send(error.details[0].message);
    // get the username and password from the request body.
    let username = req.body.username;
    let password = req.body.password;
    try {
        // if the username exists.
        const result = await getUserByUserName(username);
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
    } catch (err) {
        console.error(err.message);
    }
};


// to logout a user.
const signOut = (req, res) => {
    // destroy the session.
    req.session.destroy();
    res.json({ message: "successfully logged out." });
};


// function to validate user input when logging in.
const validate = (req) => {
    const schema = Joi.object({
        username: Joi.string().min(3).required(),
        password: Joi.string().min(3).required(),
    });
    return schema.validate(req);
};

// function to validate user input when registering.
const validateUser = (user) => {
    const schema = Joi.object({
        username: Joi.string().min(3).required(),
        password: Joi.string().min(3).required(),
        first_name: Joi.string().min(3).required(),
        last_name: Joi.string().min(3).required(),
        email: Joi.string().email().required()
    });
    return schema.validate(user);
};

// hash the password. 
const hashPassword = (password) => {
    const saltRounds = 10;
    const salt = bcrypt.genSaltSync(saltRounds);
    return bcrypt.hashSync(password, salt);
};


module.exports = {
    register,
    signIn,
    signOut,

};