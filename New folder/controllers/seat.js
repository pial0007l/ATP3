var express = require('express');
var router = express.Router();
var seatModel = require.main.require('./models/seat-model');

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

router.get('/:id', function(request, response){
	var id = request.params.id

		for(var i=1;i<=8;i++){
			for(var j=1;j<=4;j++){
				var seat={
					name:String.fromCharCode(64+i)+j,
					busid:id,
					passengerid:0,
					status:0
				}
				seatModel.insert(seat, function(id){

				});
			}

		}
		response.redirect('/bus');
		/*var seat={
			name:String.fromCharCode(65)+"1"
		}
			console.log(seat.name);*/
	});



module.exports = router;
