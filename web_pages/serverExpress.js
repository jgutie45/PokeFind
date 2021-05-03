// Load Node modules
var express = require('express');
const ejs = require('ejs');
var path = require('path');
// Initialise Express
var app = express();
// Render static files
app.use(express.static(path.join(__dirname))); //('web_pages'));
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
app.get('/sr', async function(req, res){
	var runProcedure = require('./searchthis.js')
	var result = await runProcedure.buildPromise()
	console.log(result[0]);
	res.render(path.join(__dirname + '/CardList'),{
		pokemonName: result
	})
})
