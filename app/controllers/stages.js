/**
 * Module dependencies.
 */
var db = require('../../config/sequelize');


exports.getStages = function(req, res) {
    db.Stage.findAll({
        include: [	{ model: db.DepStage, as: 'DepStages'}
        			,{ model: db.DepStage, as: 'StageDepForStages'}
        			,{ model: db.StageDir, as: 'StageDir'}
        			,{ model: db.StatusDir, as: 'StatusDir'}
        			,{ model: db.User, as: 'StageCurator'}
        		]
    }).success( function ( stages ) {
        
        //надо доделать обработку ошибок!!!
        if ( !stages ) {
            console.log("Failed to load stages");
            return;
        }

        
        res.json( {
            'status': 'ok',
            'detail': stages
        } );
    } ).error( function ( err ) {
        res.json( {
            'status': 'error',
            'detail': err
        } )
    } );
};

