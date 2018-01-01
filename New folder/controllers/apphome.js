var express = require('express');
var router = express.Router();
var busModel = require.main.require('./models/bus-model');
var seatModel = require.main.require('./models/seat-model');

router.get('/', function(request, response){
	response.render('apphome/index');
});

router.post('/', function(request, response){
	  var departuredate= request.body.day + "/" + request.body.month + "/" + request.body.year
		console.log(departuredate);
	var bus={
		start: request.body.start,
		end:request.body.end,
		date:departuredate,
		type:request.body.type
	};
	busModel.get(bus,function(result){
		var data = {
			busList: result
		};
		//console.log(departuredate);
		response.render('apphome/result', data);
	});
});

router.get('/tickets/:id', function(request, response){
 var busid=request.params.id;
	//console.log(id);
	seatModel.get(busid,function(result){
		var data = {
			seatList: result
		};
		//console.log(departuredate);
		response.render('apphome/tickets', data);
	});

});

module.exports = router;
