/**
 * Module dependencies.
 */
var db = require( '../../config/sequelize' );


/**
 * Logout
 */
exports.logout = function ( req, res ) {
    if ( req.session.userId ) {
        req.logout();
        req.session.userId = null;
        return res.json( {
            'status': 'ok'
        } );
    }

    return res.json( {
        'status': 'error',
        'detail': 'user_is_not_logined'
    } );
};

/**
 * Login
 */
exports.login = function ( req, res ) {
    if(req.session.userId) {
        return res.json( {
            'status': 'error',
            'detail': 'user_already_logined'
        } );
    }
    if ( !req.body.username || !req.body.password ) {
        return res.json( {
            'status': 'error',
            'detail': 'user_request_not_name_or_pasword'
        } );
    }

    var where = {
        username: req.body.username
    }
    db.User.find( {
        where: where
    } ).success( function ( user ) {
        if ( !user ) {
            return res.json( {
                'status': 'error',
                'detail': 'user_not_found'
            } );
        }

        var clearPassword = new Buffer( req.body.password, 'base64' ).toString( 'utf8' );
        console.log( clearPassword );

        if ( !user.authenticate( clearPassword ) ) {
            return res.json( {
                'status': 'error',
                'detail': 'user_invalid_password'
            } );
        }

        req.profile = user;
        req.session.userId = user.id;
        // @TODO Удалить компрометирующие поля (через delete  не сработало)
        // delete user['hashedPassword'];
        // delete user['salt'];
        return res.json( {
            'status': 'ok',
            'detail': user
        } );
    } ).error( function ( err ) {
        return res.json( {
            'status': 'error',
            'detail': err
        } );
    } );
};

/**
 * Create user
 */
exports.register = function ( req, res ) {
    var user = db.User.build( req.body );
    // console.log( "Pass: " + req.body.password );
    user.provider = 'local';
    user.salt = user.makeSalt();
    var clearPassword = new Buffer( req.body.password, 'base64' ).toString( 'utf8' );
    user.hashedPassword = user.encryptPassword( clearPassword, user.salt );
    // console.log( "ClearPass: " + clearPassword );
    // console.log("New Hashed: " + user.hashedPassword);
    // console.log( 'New User (local) : { id: ' + user.id + ' username: ' + user.username + ' }' );

    var errors = user.validate();
    if ( errors ) {
        return res.json( {
            'status': 'error',
            'detail': errors
        } )
    }
    user.save().success( function () {
        req.login( user, function ( err ) {
            if ( err ) {
                return res.json( {
                    'status': 'error',
                    'detail': err
                } );
                return next( err );
            }
            req.session.userId = user.id;
            res.json( {
                'status': 'ok',
                'detail': user
            } );
        } );
    } ).error( function ( err ) {
        res.json( {
            'status': 'error',
            'detail': err
        } )
    } );
};

/**
 * Send User
 */
exports.profile = function ( req, res ) {
    /*if ( !req.session.userId ) {
        return res.json( {
            'status': 'error',
            'detail': 'user_not_auth'
        } );
    }else{
        req.session.lastAccess = new Date().getTime();
    }*/

    var searchParams = {};
    
    if(req.param('username')){
        searchParams = {
            where: {
                username: req.param('username')
            }
        }
    }else{
        searchParams = {
            where: {
                id: req.session.userId
            }
        }
    }
    
    //var viewUser = (req.param('username')) ? (req.param('username')) : 
    
    db.User.find(searchParams).success( function ( user ) {
        //нужна обработка ошибок
        // + (id) ? (id) : ( (username) )
        //if ( !user ) return next( new Error( 'Failed to load User ' ) );
        if ( !user ) {
            console.log("Failed to load User");
            return  new Error( 'Failed to load User ' ) ;
        }

        req.profile = user;
        res.json( {
            'status': 'ok',
            'detail': user
        } );
    } ).error( function ( err ) {
        res.json( {
            'status': 'error',
            'detail': err
        } )
    } );
};

/**
 * Find user by id
 */
// exports.user = function ( req, res, next, id ) {
//     User.find( {
//         where: {
//             id: id
//         }
//     } ).success( function ( user ) {
//         if ( !user ) return next( new Error( 'Failed to load User ' + id ) );
//         req.profile = user;
//         next();
//     } ).error( function ( err ) {
//         next( err );
//     } );
// };

