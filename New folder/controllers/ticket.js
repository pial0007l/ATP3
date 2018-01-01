var express = require('express');
var router = express.Router();
var seatModel = require.main.require('./models/seat-model');


router.get('/booked/:id/:name', function(request, response){

    console.log("posted");
    var id=request.params.id;
    var nam=request.params.name;
    var busid1= {
      bus_id:id,
      seat_name:nam
    };

     //console.log(id);
     seatModel.updateStatusbooked(busid1,function(result){
       //console.log(departuredate);
       next();
     });
    	//console.log(id);
    	seatModel.get(id,function(result){
    		var data = {
    			seatList: result
    		};
    		//console.log(departuredate);
    		response.render('apphome/tickets', data);
    	});
});
router.get('/unbooked/:id/:name', function(request, response){
	  console.log("posted");
    var id=request.params.id;
    var nam=request.params.name;
    var busid1= {
      bus_id:id,
      seat_name:nam
    };

     //console.log(id);
     seatModel.updateStatusunbooked(busid1,function(result){
       //console.log(departuredate);
       next();
     });
    	//console.log(id);
    	seatModel.get(id,function(result){
    		var data = {
    			seatList: result
    		};
    		//console.log(departuredate);
    		response.render('apphome/tickets', data);
    	});
});
module.exports = router;
