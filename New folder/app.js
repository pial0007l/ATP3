// DECLARATION
var express = require('express');
var bodyParser = require('body-parser');
var expressSession = require('express-session');
var $ = require('jquery')
var app = express();
var seatModel = require.main.require('./models/seat-model');

var login = require('./controllers/login');
var logout = require('./controllers/logout');
var home = require('./controllers/home');
var category = require('./controllers/category');
var apphome = require('./controllers/apphome');
var admin = require('./controllers/admin');
var bus = require('./controllers/bus');
var seat = require('./controllers/seat');
var ticket = require('./controllers/ticket');

app.use('/static', express.static(__dirname + '/public'));
// CONFIGURATION
app.set('view engine', 'ejs');


// MIDDLEWARES
app.use(bodyParser.urlencoded({extended:false}));
app.use(expressSession({secret: 'my top secret password', saveUninitialized: true, resave: false}));

// ROUTES
app.use('/login', login);
app.use('/logout', logout);
app.use('/home', home);
app.use('/category', category);
app.use('/apphome', apphome);
app.use('/admin',admin)
app.use('/bus',bus)
app.use('/seat',seat)
app.use('/ticket',ticket)

app.get('/login', function(req, res){
	res.redirect('/login');
});

app.get('/', function(req, res){
	res.redirect('/apphome');
});

app.post('/ticket', function(req, res){
	console.log("posted");
	//res.redirect('/apphome');
});

// SERVER
app.listen(1337, function(){
	console.log('server started ...');

	setTimeout(function () {
  console.log('3 second passed');
  seatModel.updateStatusAll(1,function(result){
		
  });
},30000)
});
