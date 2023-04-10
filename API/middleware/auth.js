
function auth(req, res, next) {
    // if the user is logged in, continue.
    if (req.session.user) {
        next();
    // if the user is not logged in.
    } else {
        res.status(401).json({message: "You must be logged in."});
    }
}

module.exports = auth;