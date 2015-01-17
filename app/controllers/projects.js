/**
 * Module dependencies.
 */
var db = require( '../../config/sequelize' );


/**
 * get projects
 */
exports.getProjects = function ( req, res ) {
    /*if ( !req.session.userId ) {
        return res.json( {
            'status': 'error',
            'detail': 'user_not_auth'
        } );
    }else{
        req.session.lastAccess = new Date().getTime();
    }*/
    
    //{ model: db.Stage },
    db.Project.findAll({
        include: [{ model: db.User, as: 'ProjectCurator'},{ model: db.User, as: 'ProjectClient'},{ model: db.Stage, as: 'ProjectStages' },{ model: db.Post, as: 'ProjectPosts' }]
    }).success( function ( projects ) {
        
        //надо доделать обработку ошибок!!!
        if ( !projects ) {
            console.log("Failed to load projects");
            return;
        }

        
        res.json( {
            'status': 'ok',
            'detail': projects
        } );
    } ).error( function ( err ) {
        res.json( {
            'status': 'error',
            'detail': err
        } )
    } );
};


/**
 * get one project
 */
exports.getOneProject = function ( req, res ) {
    /*if ( !req.session.userId ) {
        return res.json( {
            'status': 'error',
            'detail': 'user_not_auth'
        } );
    }else{
        req.session.lastAccess = new Date().getTime();
    }*/

    var searchParams = {};
    
    if(req.param('projectid')){
        searchParams = {
            where: {
                id: req.param('projectid')
            }
        }
    }

    searchParams.include = [{ model: db.User, as: 'ProjectCurator'},{ model: db.User, as: 'ProjectClient'},{ model: db.Stage, as: 'ProjectStages' },{ model: db.Post, as: 'ProjectPosts' }];

    //{ model: db.Stage },
    db.Project.find(searchParams).success( function ( project ) {
        
        //надо доделать обработку ошибок!!!
        if ( !project) {
            
            res.status(200).send('Failed to load this project');
            console.log("Failed to load this project");
            return;
        }

        
        res.json( {
            'status': 'ok',
            'detail': project
        } );
    } ).error( function ( err ) {
        res.json( {
            'status': 'error',
            'detail': err
        } )
    } );
};



exports.createProject = function ( req, res ) {
    res.send(200, "It's cool");

};

