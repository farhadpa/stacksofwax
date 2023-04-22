
function auth(req, res, next) {
    // if the user is logged in, continue.
    if (req.session.user) {
        next();
    // if the user is not logged in.
    } else {
        res.redirect('/login');
    }
}

module.exports = auth;