var express = require('express')
var app = express()

var runQuery = require('./runthis.js')

app.get('/', function(require, res){
    res.sendFile(path.join( __dirname + '/index.html'))
})
app.get('/db', async function(req, res){
    var result = await runQuery.buildPromise()
    res.send(result) // runQuery.queryDB()
})

app.listen(3000)