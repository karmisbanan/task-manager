/**
 * Module dependencies.
 */
var db = require('../../config/sequelize');
var url = require('url');

var includeArr = [  { model: db.Stage, as: 'Stage' }  
                ];
/**
 * get all stages
 */
exports.getTasks = function(req, res) {
    var searchParams = {};
    searchParams.where = req.query;
    searchParams.include = includeArr;
    
    db.Task.findAll(searchParams).success( function ( tasks ) {
        
        //надо доделать обработку ошибок!!!
        if ( !tasks ) {
            console.log("0 rows was returned");
            //return;
        }

        
        res.json( {
            'status': 'ok',
            'detail': tasks
        } );
    } ).error( function ( err ) {
        res.json( {
            'status': 'error',
            'detail': err
        } )
    } );
};


/**
 * get  stage tasks
 */
exports.getStageTasks= function(req, res) {
    

    var where = {
        
        StageId: req.param('stageid')
    };
    
    var includeCustomArr = {
        model: db.Stage, as: 'Stage', 
        where: {
                ProjectId: req.param('projectid')
            }
    }
    
    db.Task.findAll({
        where: where,
        include: includeCustomArr
    }).success( function ( tasks ) {
        
        //надо доделать обработку ошибок!!!
        if ( !tasks ) {
            console.log("0 rows was returned");
            //return;
        }

        
        res.json( {
            'status': 'ok',
            'detail': tasks
        } );
    } ).error( function ( err ) {
        res.json( {
            'status': 'error',
            'detail': err
        } )
    } );
};

/**
 * get one stage task
 */
exports.getOneStageTask = function(req, res) {
    //req.param('projectid')

    var where = {
        id: req.param('taskid'),
        StageId: req.param('stageid')
    };
    
    var includeCustomArr = {
        model: db.Stage, as: 'Stage', 
        where: {
                ProjectId: req.param('projectid')
            }
    };

    
    
    db.Task.findAll({
        where: where,
        include: includeCustomArr
    }).success( function ( tasks ) {
        
        //надо доделать обработку ошибок!!!
        if ( !tasks ) {
            console.log("0 rows was returned");
            //return;
        }

        
        res.json( {
            'status': 'ok',
            'detail': tasks
        } );
    } ).error( function ( err ) {
        res.json( {
            'status': 'error',
            'detail': err
        } )
    } );
};

/**
 * create new project stage task
 */
exports.createStageTask = function ( req, res ) {

    var task = db.Task.build( req.body );
    
    task.StageId = req.param('stageid');
    // console.log( 'New User (local) : { id: ' + user.id + ' username: ' + user.username + ' }' );

    var errors = task.validate();
    if ( errors ) {
        return res.json( {
            'status': 'error',
            'detail': errors
        } )
    }

    task.save().success( function () {
        res.json( {
            'status': 'ok',
            'detail': task
        } );
    } ).error( function ( err ) {
        res.json( {
            'status': 'error',
            'detail': err
        } )
    } );


    //res.send(200, "It's cool");

};

/**
 * create new task
 */
exports.createTask = function ( req, res ) {

    

    var task = db.Task.build( req.body );
    
    task.StageId = req.param('stageid');
    // console.log( 'New User (local) : { id: ' + user.id + ' username: ' + user.username + ' }' );

    var errors = task.validate();
    if ( errors ) {
        return res.json( {
            'status': 'error',
            'detail': errors
        } )
    }

    task.save().success( function () {
        res.json( {
            'status': 'ok',
            'detail': task
        } );
    } ).error( function ( err ) {
        res.json( {
            'status': 'error',
            'detail': err
        } )
    } );


    //res.send(200, "It's cool");

};