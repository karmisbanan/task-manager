/**
 * Module dependencies.
 */
var db = require('../../config/sequelize');
var includeArr = [  { model: db.DepStage, as: 'DepStages'}
                    ,{ model: db.DepStage, as: 'StageDepForStages'}
                    ,{ model: db.StageDir, as: 'StageDir'}
                    ,{ model: db.StatusDir, as: 'StatusDir'}
                    ,{ model: db.User, as: 'StageCurator'}
                ];
/**
 * get all stages
 */
exports.getStages = function(req, res) {
    var searchParams = {};
    searchParams.where = req.query;
    searchParams.include = includeArr;
    
    
    db.Stage.findAll(searchParams).success( function ( stages ) {
        
        //надо доделать обработку ошибок!!!
        if ( !stages ) {
            console.log("0 rows was returned");
            //return;
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


/**
 * get project stages
 */
exports.getProjectStages = function(req, res) {
    //req.param('projectid')

    var where = {
        ProjectId: req.param('projectid')
    };
    
    
    db.Stage.findAll({
        where: where,
        include: includeArr
    }).success( function ( stages ) {
        
        //надо доделать обработку ошибок!!!
        if ( !stages ) {
            console.log("0 rows was returned");
            //return;
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


/**
 * get project stages
 */
exports.getOneProjectStage = function(req, res) {
    //req.param('projectid')

    var where = {
        id: req.param('stageid')
    };
    
    
    db.Stage.findAll({
        where: where,
        include: includeArr
    }).success( function ( stages ) {
        
        //надо доделать обработку ошибок!!!
        if ( !stages ) {
            console.log("0 rows was returned");
            //return;
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

/**
 * create new project stage
 */
exports.createProjectStage = function ( req, res ) {

    var stage = db.Stage.build( req.body );
    stage.ProjectId = req.param('projectid');
    // console.log( 'New User (local) : { id: ' + user.id + ' username: ' + user.username + ' }' );

    var errors = stage.validate();
    if ( errors ) {
        return res.json( {
            'status': 'error',
            'detail': errors
        } )
    }

    stage.save().success( function () {
        res.json( {
            'status': 'ok',
            'detail': stage
        } );
    } ).error( function ( err ) {
        res.json( {
            'status': 'error',
            'detail': err
        } )
    } );


    //res.send(200, "It's cool");

};