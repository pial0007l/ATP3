var db = require('./db');

module.exports = {
	getAll: function(callback){
		var sql = "SELECT * FROM categories";
		db.getResult(sql, null, function(result){
			callback(result);
		});
	},
	get: function(catid, callback){
		var sql = "SELECT * FROM categories WHERE id=?";
		db.getResult(sql, [catid], function(result){
			callback(result[0]);
		});
	},
	insert: function(category, callback){
		var sql = "INSERT INTO categories VALUES (null, ?, ?)";
		db.executeGetId(sql, [category.name, category.description], function(id){
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
	update: function(category, callback){
		var sql = "UPDATE categories SET name=?, description=? WHERE id=?";
		db.execute(sql, [category.name, category.description, category.id], function(flag){
			callback(flag);
		});
	}
};