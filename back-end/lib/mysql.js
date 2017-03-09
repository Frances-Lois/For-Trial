'use strict';

const mysql  = require('mysql');

const connection = mysql.createConnection({
    host     : 'localhost',
    user     : 'root',
    password : 'admin',
    database : 'MalICSi',
    dateStrings : true
});

module.exports = connection.connect((err) => {				//check if database is connected
    if (!err) {
        console.log('Database connected...');
    } else {
        console.log(err);
        // console.log('Error connecting to database...');
    }
});
