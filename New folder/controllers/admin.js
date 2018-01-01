var express = require('express');
var router = express.Router();
var busModel = require.main.require('./models/bus-model');

router.all('*', function(request, response, next){
	if(request.session.loggedUsername == null)
	{
		response.redirect('/login');
	}
	else
	{
		next();
	}
});

router.get('/', function(request, response){
	busModel.getAll(function(result){
		var data = {
			busList: result
		};
		response.render('admin/index', data);
	});

});

module.exports = router;
