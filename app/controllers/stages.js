/**
 * Module dependencies.
 */
var db = require('../../config/sequelize');


exports.allStages = function(req, res) {
    db.User.findAll({
         include: [{ model: db.RoleDir, as: 'Alias' }]     
    }).success(function(stage) {
      console.log(stage);
      
    }).error(function(err){
      
    });
    res.redirect('/');
};

