// To run as standalone
const mysqlx = require('@mysql/xdevapi');

// Connect to serber using a connection URL
var mySession = mysqlx.getSession({
    host: 'locationhost', 
    port: 3306,
    user: 'root', 
    password:'W2ill1iam!'})
    .then (session =>{
        var pokemonDB = session.getSchema('PokeFind')
            // Accessing an existing table
            var myTable = myDb.getTable('pokemon');
            var myResults = myTable.select(['id', 'pokemon_name','pokemon_level','hp','rarity','set_name','image_large','image_small','evolvesTo']).
            where('pokemon_name like :pokemon_name').
            bind('name', 'P%').execute();

            return myResults
    })
    .then( result =>{
        // Print Results
        console.log(result.fetchAll());        
    });

  