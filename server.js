var express = require('express')
var bodyParser = require('body-parser')
var sessions = require('express-session')

var app = express()
var session

app.use(bodyParser.json())
app.use(bodyParser.urlencoded({extended:true}))

app.use(sessions({
	secret:'cmsc218hashqwertyuiop',
	resave: false,
	saveUninitialized: false
}))
app.get('/login', function(req, res){
	session = req.session
	if(session.uniqueID){
		res.redirect('/redirects')
	}
	res.sendFile('./index.html',{root:__dirname})
})
app.post('/login', function (req,res) {
	// res.end(JSON.stringtify(req.body));
	session = req.session
	if(session.uniqueID){
		res.redirect('/redirects')
	}
	// if(req.body.username=='admin' && req.body.password == 'admin'){
		session.uniqueID = req.body.username
	// }
	res.redirect('/redirects')
})

app.get('/logout', function (req, res){
	req.session.destroy()
	res.redirect('/login')
})
app.get('/redirects', function (req, res) {
	// body...
	session = req.session
	if(session.uniqueID=='admin'){
		console.log(session.uniqueID)
		res.redirect('/admin')
	}else{
		res.send('who are you <a href="/logout">KILL<a>')
	}
})

app.listen(3000, function () {
	// body...
	console.log('Listening on port 3000')
})
