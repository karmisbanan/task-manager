/**
 * Module dependencies.
 */
var express = require('express');
var flash = require('connect-flash');
// var helpers = require('view-helpers');
var config = require('./config');

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
    app.use(express.static(config.root + '/public/app'));

    //Don't use logger for test env
    if (process.env.NODE_ENV !== 'test') {
        app.use(express.logger('dev'));
    }

    // Enable jsonp
    // app.enable("jsonp callback");

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
        // app.use(helpers(config.app.name));

        //use passport session
        app.use(passport.initialize());
        app.use(passport.session());

        app.use(express.bodyParser());

        //routes should be at the last
        app.use(app.router);
    });
};
