var db = require('./db');

module.exports = {
  insert: function(seat, callback){
    var sql = "INSERT INTO seats VALUES (null, ?, ?, ?, ?)";
    db.executeGetId(sql, [seat.name, seat.busid, seat.passengerid, seat.status], function(id){
      if(id <= 0)
      {
        callback(false);
      }
      else
      {
        callback(true);
      }
    });
  },

  get: function(busid, callback){
		var sql = "SELECT * FROM seats WHERE (bus_id=?)";
		db.getResult(sql, [busid], function(result){
			callback(result);
		});
	},

  updateStatusAll: function(busid, callback){
		var sql = "UPDATE seats SET status=? WHERE passenger_id=?";
		db.getResult(sql, [0,0], function(result){
		});
	},
  updateStatusbooked: function(busid, callback){
		var sql = "UPDATE seats SET status=? WHERE (bus_id=? AND seat_name=?)";
		db.getResult(sql, [1,busid.bus_id,busid.seat_name], function(result){

		});
	},
  updateStatusunbooked: function(busid, callback){
		var sql = "UPDATE seats SET status=? WHERE (bus_id=? AND seat_name=?)";
		db.getResult(sql, [0,busid.bus_id,busid.seat_name], function(result){

		});
	},

}
