var express = require('express');
var router = express.Router();
var categoryModel = require.main.require('./models/category-model');

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
	categoryModel.getAll(function(result){
		var data = {
			catList: result
		};
		response.render('category/index', data);
	});
	
});

router.get('/create', function(request, response){
	response.render('category/create');
	
});

router.post('/create', function(request, response){
	var cat = {
		name: request.body.catname,
		description: request.body.desc
	};
	
	categoryModel.insert(cat, function(success){
		if(success)
		{
			response.redirect('/category');
		}
		else
		{
			response.send('Error inserting data');
		}
	});
	
});

router.get('/edit/:id', function(request, response){
	var catid = request.params.id;
	categoryModel.get(catid, function(category){
		response.render('category/edit', category);
	});
	
});

router.post('/edit/:id', function(request, response){
	var cat = {
		id: request.body.catid,
		name: request.body.catname,
		description: request.body.desc
	};

	categoryModel.update(cat, function(success){
		if(success)
		{
			response.redirect('/category');
		}
		else
		{
			response.send('Error inserting data');
		}
	});
	
});



module.exports = router;
