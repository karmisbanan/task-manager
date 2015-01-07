/**
 * Module dependencies.
 */
var db = require('../../config/sequelize');


exports.allStages = function(req, res) {
    db.Stage.findAll({
            
    }).success(function(stage) {
      console.log(stage);
      
    }).error(function(err){
      
    });
    res.redirect('/');
};

