// To run as standalone
const mysqlx = require('@mysql/xdevapi');

// Connect to serber using a connection URL
var mySession = mysqlx.getSession({
    host: 'localhost', 
    port: 33060,
    user: 'root', 
    password:'W2ill1iam!'})
    .then (session =>{
        var myDb = session.getSchema('PokeFind');
            // Accessing an existing table
            var myTable = myDb.getTable('pokemon');
            var myResults = myTable.select(['id', 'pokemon_name','pokemon_level','hp', 'pokemon_type', 'rarity', 'set_name', 'image_large', 'image_small', 'evolvesTo']).
            where('pokemon_name like :pokemon_name').
            bind('pokemon_name', 'P%').execute();

            return myResults
    })
    .then( result =>{
        // Print Results
        console.log(result.fetchAll());        
    });

module.exports = {
    buildPromise : async function ()
    {
        const mysqlx = require('@mysql/xdevapi');

        // Connect to server using a connection URL
        var mySession = mysqlx.getSession({
            host:'localhost',
            port: 33060,
            user:'root',
            password: 'W2ill1iam!'
        })
        .then(session =>{
            var myDb = session.getSchema('PokeFind');
            // Accessing an existing table
            var myTable = myDb.getTable('pokemon');
            var myResults = myTable.select(['id', 'pokemon_name','pokemon_level','hp', 'pokemon_type', 'rarity', 'set_name', 'image_large', 'image_small', 'evolvesTo']).
            where('pokemon_name like :pokemon_name').
            bind('pokemon_name', '%').execute();
            return myResults; 
        })
        .then(result =>{
            return result.fetchAll();
        });
        return mySession; 
    }
}
  