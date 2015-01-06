/**
 * Module dependencies.
 */
var express = require('express');
var flash = require('connect-flash');
var helpers = require('view-helpers');
var config = require('./config');
var i18n = require('i18next');
var form    = require( 'express-form2' );
var field   = form.field;
i18n.init({
    saveMissing: true,
    debug: true,
    ignoreRoutes: ['public/']
});
module.exports = function(app, passport) {

    console.log('Initializing Express');

    app.set('showStackError', true);    
    
    //Prettify HTML
    app.locals.pretty = true;

    //Should be placed before express.static
    app.use(express.compress({
        filter: function(req, res) {
            return (/json|text|javascript|css/).test(res.getHeader('Content-Type'));
        },
        level: 9
    }));

    //Setting the fav icon and static folder
    app.use(express.favicon());
    app.use(express.static(config.root + '/public'));

    //Don't use logger for test env
    if (process.env.NODE_ENV !== 'test') {
        app.use(express.logger('dev'));
    }

    //Set views path, template engine and default layout
    app.set('views', config.root + '/app/views');
    app.set('view engine', 'jade');

    //Enable jsonp
    app.enable("jsonp callback");

    app.configure(function() {
        //cookieParser should be above session
        app.use(express.cookieParser());
        // request body parsing middleware should be above methodOverride
        app.use(express.urlencoded());
        app.use(express.json());
        app.use(express.methodOverride());

        //express/mongo session storage
        app.use(express.session({ secret: '$uper$ecret$e$$ionKey'}));

        //connect flash for flash messages
        app.use(flash());

        //dynamic helpers
        app.use(helpers(config.app.name));

        //use passport session
        app.use(passport.initialize());
        app.use(passport.session());

        app.use(express.bodyParser());
        // app.use(express.bodyDecoder());
        app.use(i18n.handle);
        //routes should be at the last
        app.use(app.router);

        //Assume "not found" in the error msgs is a 404. this is somewhat silly, but valid, you can do whatever you like, set properties, use instanceof etc.
        app.use(function(err, req, res, next) {
            //Treat as 404
            if (~err.message.indexOf('not found')) return next();

            //Log it
            console.error(err.stack);

            //Error page
            res.status(500).render('500', {
                error: err.stack
            });
        });
        
        i18n.registerAppHelper(app);
        
        //Assume 404 since no middleware responded
        app.use(function(req, res, next) {
            res.status(404).render('404', {
                url: req.originalUrl,
                error: 'Not found'
            });
        });

    });
};