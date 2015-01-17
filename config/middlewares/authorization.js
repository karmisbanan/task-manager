/**
 * Generic require login routing middleware
 */
exports.requiresLogin = function(req, res, next) {
    if (!req.isAuthenticated()) {
        return res.send(401, 'User is not authorized');
    }
    next();
};

/**
 * User authorizations routing middleware
 */
exports.user = {
    hasAuthorization: function(req, res, next) {
        if (req.profile.id != req.user.id) {
            return res.send(401, 'User is not authorized');
        }
        next();
    }
};

/**
 * Article authorizations routing middleware
 */
 /*
exports.article = {
    hasAuthorization: function(req, res, next) {
        if (req.article.user.id != req.user.id) {
            return res.send(401, 'User is not authorized');
        }
        next();
    }
};*/


/**
 * User authorizations routing middleware
 */
exports.userSession = {
    hasAuthorization: function(req, res, next) {
        /*if ( !req.session.userId ) {
            return res.json( {
                'status': 'error',
                'detail': 'user_not_auth'
            } );
        }else{
            req.session.lastAccess = new Date().getTime();
        }*/


        if (!req.session.userId) {
            return res.send(401, 'User is not authorized');
        }
        req.session.lastAccess = new Date().getTime();
        next();
    }
};