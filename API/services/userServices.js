const query = require("../db");

// create new user.
const createUser = async  (username, password, first_name, last_name, email) => {
    try {
        let sql = `INSERT INTO user 
                (username, password, first_name, last_name, email) 
                VALUES (?, ?, ?, ?, ?);`;
        const user = await query(sql, [username, password, first_name, last_name, email]) ;
        return user;
    } catch (err) {
        console.error(err.message);
    }
};

// get user by username.
const getUserByUserName = async (username) => {
    try {
        let sql = `SELECT * FROM user WHERE username = ?;`;
        const user = await query(sql, [username]);
        return user;
    } catch (err) {
        console.error(err.message);
    }

};

module.exports = {
    createUser,
    getUserByUserName
};