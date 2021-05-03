const mysqlx = require('@mysql/xdevapi');
let config = require('./config.js');

let connection = mysql.createConnection(config);

let sql = 'CALL findPokemon(?)';

connection.query(sql, pokemonName,(error, results, fields) =>{
    if(error){
        return console.error(error.message);
    }
    console.log(results[0]);
});

connection.end();