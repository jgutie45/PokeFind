
module.exports = {
    searchByName : async function (name)
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
            bind('pokemon_name', name + '%').execute();
            return myResults; 
        })
        .then(result =>{
            return result.fetchAll();
        });
        return mySession; 
    }
}
  