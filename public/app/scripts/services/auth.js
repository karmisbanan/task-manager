'use strict';

/**
 * @ngdoc service
 * @name publicApp.Auth
 * @description
 * # Auth
 * Factory in the publicApp.
 */
angular.module( 'publicApp' )
    .factory( 'Auth', [ 'Base64', '$http', '$cookieStore', '$rootScope', '$timeout',
    function ( Base64, $http, $cookieStore, $rootScope, $timeout ) {
            var service = {};
            service.Login = function ( username, password, callback ) {

                $http.post( '/login', {
                    username: username,
                    password: Base64.encode( password )
                } )
                    .success( function ( response ) {
                        callback( response );
                    } );

            };
            service.Register = function ( data, callback ) {

                $http.post( '/register', {
                    name: data.name,
                    email: data.email,
                    username: data.username,
                    password: Base64.encode( data.password ),

                } )
                    .success( function ( response ) {
                        callback( response );
                    } );

            };
            service.Logout = function ( callback ) {

                /* Use this for real authentication
             ----------------------------------------------*/
                $http.post( '/logout', {} )
                    .success( function ( response ) {
                        callback( response );
                    } );

            };
            service.SetCredentials = function ( user ) {
                var authdata = Base64.encode( user.username + ':' + user.name + ':' + user.email );

                $rootScope.globals = {
                    currentUser: user
                };

                $http.defaults.headers.common[ 'Authorization' ] = 'Basic ' + authdata; // jshint ignore:line
                $cookieStore.put( 'globals', $rootScope.globals );
            };

            service.ClearCredentials = function () {
                $rootScope.globals = {};
                $cookieStore.remove( 'globals' );
                $http.defaults.headers.common.Authorization = 'Basic ';
            };

            return service;
    } ] )