var db = require('./db');

module.exports = {
  getAll: function(callback){
		var sql = "SELECT * FROM buses";
		db.getResult(sql, null, function(result){
			callback(result);
		});
	},

  get: function(bus, callback){
		var sql = "SELECT * FROM buses WHERE (starting_counter=? AND ending_counter=? AND departuer_date=? AND 	coach_type=?)";
		db.getResult(sql, [bus.start, bus.end, bus.date, bus.type], function(result){
			callback(result);
		});
	},

  insert: function(bus, callback){
		var sql = "INSERT INTO buses VALUES (null, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		db.executeGetId(sql, [bus.bus_name, bus.route, bus.departuer_date, bus.departure_time, bus.starting_counter, bus.ending_counter, bus.fare, bus.coach_type, bus.arival_Time, bus.seat_Available], function(id){
      if(id <= 0)
			{
				callback(0);
			}
			else
			{
				callback(id);
			}
		});
	},
}
