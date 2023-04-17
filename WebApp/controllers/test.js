const axios = require('axios');

const test = async (req, res) => {
    try {
    // let data = await axios.get('http://localhost:4000/collections');
    let data = {"collections":[]}
    // console.log(data);
    res.render('login', {data: data});
    } catch (error) {
        console.log(error.message);
    } 
};

// const getCollections = async (req, res) => {
//     try {
//     let response = await axios.get('http://localhost:4000/collections', {withCredentials: true});
//     let data = response.data;
//     console.log(data);
//     res.render('index', {data: data});
//     } catch (error) {
//         console.log(error.message);
//     } 
// };



module.exports = {
    test,
    // getCollections
}