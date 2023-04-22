const multer = require('multer');
const storageEngine = multer.diskStorage({
    destination: "./public/uploads",
    filename: (req, file, cb) => {
        cb(null, `${Date.now()}--${file.originalname}`);
    },
});
const upload = multer({ storage: storageEngine });


function uploadFile(req, res, next) {
    return upload.single('image')(req, res, next);
}

module.exports = uploadFile;