const Joi = require("joi");
const bcrypt = require("bcrypt");
const { createUser, getUserByUserName } = require("../services/authServices");

// route to register a new user.
const register = async (req, res) => {
    // validate user input.
    const { error } = validateUser(req.body);
    if (error) return res.status(400).send(error.details[0].message);

    let { username, password, first_name, last_name, email } = req.body;
    // check if the username already exists.
    const result = await getUserByUserName(username);
    if (result) {
        res.json({ message: "username already exists" });
    // if username doesn't exist, create a new user.
    } else {
        // create a new user.
        const newUser = await createUser(username, password, first_name, last_name, email);
        res.json({ message: "success" , username: newUser.username + " has been created." });
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
        if (result) {
            let user = result.dataValues;
            // compare the password with the hashed password.
            const validPassword = bcrypt.compareSync(password, user.password);
            if (validPassword) {
                res.json({ 
                    message: "successfully logged in.", 
                    user: {
                        user_id: user.user_id, 
                        username:user.username, 
                        first_name: user.first_name, 
                        last_name: user.last_name, 
                        email: user.email
                    }
                });
                // if the password is invalid.
            } else {
                res.json({ message: "Invalid username or password" });
            }
            // if the username doesn't exist.
        } else {
            res.json({ message: "Invalid username or password" });
        }
    } catch (err) {
        console.error(err.message);
    }
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

module.exports = {
    register,
    signIn,
};
