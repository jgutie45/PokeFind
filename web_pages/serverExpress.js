// Load Node modules
var express = require('express');
const ejs = require('ejs');
var path = require('path');
// Initialise Express
var app = express();
// Render static files
app.use(express.static(path.join(__dirname))); //('web_pages'));
app.use(express.json());
app.use(express.urlencoded({extended: false}));
// Set the view engine to ejs
app.set('view engine', 'ejs');
// Port website will run on
app.listen(8080);


//var runQuery = require('./runthis.js')

app.get('/', function (req, res) {
  res.sendFile(path.join(__dirname + '/Home.html')) //.html'))
})
app.get('/js', function (req, res) {
	var myVar = "Apples";
	res.render(path.join(__dirname + '/testjs'), { //.html'))
	myVar: myVar
    }
    )
	})
app.get('/db', async function (req, res) {
	var runQuery = require('./runthis.js')
	var result = await runQuery.buildPromise()
	console.log(result[0]);
	res.render(path.join(__dirname + '/CardList'), { //.html'))
		cards: result
	})
})
app.post('/sr', async function(req, res){
	var name = req.body.pokemonName;
	console.log(name);
	var runQuery = require('./searchthis.js')
	var result = await runQuery.searchByName(name);
	console.log(result[0]);
	res.render(path.join(__dirname + '/CardList'), { //.html'))
		cards: result
	})
})
