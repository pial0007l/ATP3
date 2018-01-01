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
		response.render('bus/index', data);
	});

});

router.get('/create', function(request, response){
	response.render('bus/create');

});

router.post('/create', function(request, response){
  var departuredate= request.body.day + "/" + request.body.month + "/" + request.body.year
  var departuretime= request.body.dphour + ":" + request.body.dpminutes + " " + request.body.dpformat
    var arivaltime= request.body.arhour + ":" + request.body.arminutes + " " + request.body.arformat

  var bus = {
		bus_name: request.body.bus_name,
		route: request.body.route,
    departuer_date: departuredate,
    departure_time: departuretime,
    starting_counter: request.body.start,
    ending_counter:  request.body.end,
    fare: request.body.fare,
    coach_type: request.body.type,
    arival_Time: arivaltime,
    seat_Available: request.body.seat_available

	};
  //console.log(bus.departure_time);
  busModel.insert(bus, function(id){
		if(id>0)
		{
			response.redirect('/seat/' + id);
		}
		else
		{
			response.send('Error inserting data');
		}
	});
	//console.log(busID);
});
module.exports = router;
