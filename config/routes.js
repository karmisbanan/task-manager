
var users       = require('../app/controllers/users');
var articles    = require('../app/controllers/articles');
var index       = require('../app/controllers/index');
var stages      = require('../app/controllers/stages');
var projects      = require('../app/controllers/projects');

exports.init = function(app, passport, auth) {

    console.log('Initializing Routes');

    // User Routes
    app.get('/profile', auth.userSession.hasAuthorization, users.profile);
    app.get('/profile/:username', auth.userSession.hasAuthorization, users.profile);

    app.post('/login', users.login);
    app.post('/logout', users.logout);
    app.post('/register', users.register);

    app.get('/projects', auth.userSession.hasAuthorization, projects.getProjects);
    app.get('/projects/:projectid', auth.userSession.hasAuthorization, projects.getOneProject);
    app.post('/projects', auth.userSession.hasAuthorization, projects.createProject);
    
    app.get('/stages',stages.allStages);

    // Setting the local strategy route
    // app.post('/users/session', passport.authenticate('local', {
    //     failureRedirect: '/login',
    //     failureFlash: true
    // }), users.login);

/*    // Setting the facebook oauth routes
    app.get('/auth/facebook', passport.authenticate('facebook', {
        scope: ['email', 'user_about_me'],
        failureRedirect: '/signin'
    }), users.signin);

    app.get('/auth/facebook/callback', passport.authenticate('facebook', {
        failureRedirect: '/signin'
    }), users.authCallback);

    // Setting the twitter oauth routes
    app.get('/auth/twitter', passport.authenticate('twitter', {
        failureRedirect: '/signin'
    }), users.signin);

    app.get('/auth/twitter/callback', passport.authenticate('twitter', {
        failureRedirect: '/signin'
    }), users.authCallback);

    // Setting the google oauth routes
    app.get('/auth/google', passport.authenticate('google', {
        failureRedirect: '/signin',
        scope: [
            'https://www.googleapis.com/auth/userinfo.profile',
            'https://www.googleapis.com/auth/userinfo.email'
        ]
    }), users.signin);

    app.get('/auth/google/callback', passport.authenticate('google', {
        failureRedirect: '/signin'
    }), users.authCallback);*/

    // Finish with setting up the userId param
    // app.param('userId', users.user);

    // Article Routes
    // app.get('/articles', articles.all);
    // app.post('/articles', auth.requiresLogin, articles.create);
    // app.get('/articles/:articleId', articles.show);
    // app.put('/articles/:articleId', auth.requiresLogin, auth.article.hasAuthorization, articles.update);
    // app.del('/articles/:articleId', auth.requiresLogin, auth.article.hasAuthorization, articles.destroy);

    // // Finish with setting up the articleId param
    // // Note: the articles.article function will be called everytime then it will call the next function. 
    // app.param('articleId', articles.article);

    // Home route
    // app.get('/', index.render);

    //тестовый путь для пробы 
    

};

