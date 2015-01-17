'use strict';

/**
 * @ngdoc overview
 * @name appApp
 * @description
 * # appApp
 *
 * Main module of the application.
 */
angular
    .module( 'publicApp', [
    'ngAnimate',
    'ngAria',
    'ngCookies',
    'ngMessages',
    'ngResource',
    'ngRoute',
    'ngSanitize',
    'ngTouch'
  ] )
    .config( function ( $routeProvider ) {
        $routeProvider
            .when( '/', {
                templateUrl: 'views/main.html',
                controller: 'MainCtrl'
            } )
            .when( '/about', {
                templateUrl: 'views/about.html',
                controller: 'AboutCtrl'
            } )
            .when( '/login', {
                templateUrl: 'views/login.html',
                controller: 'LoginCtrl',
                hideMenus: true
            } )
            .when('/register', {
              templateUrl: 'views/register.html',
              controller: 'RegisterCtrl',
              // hideMenus: true
            })
            .when('/logout', {
              templateUrl: 'views/logout.html',
              controller: 'LogoutCtrl'
            })
            .when('/profile', {
              templateUrl: 'views/profile.html',
              controller: 'ProfileCtrl'
            })
            .when('/profile/:username', {
              templateUrl: 'views/profile.html',
              controller: 'ProfileCtrl'
            })
            .when('/projects', {
              templateUrl: 'views/projects.html',
              controller: 'ProjectsCtrl'
            })
            .when('/projects/:projectid', {
              templateUrl: 'views/projects.html',
              controller: 'ProjectsCtrl'
            })
            .otherwise( {
                redirectTo: '/login'
            } );
    } )
    .run( [ '$rootScope', '$location', '$cookieStore', '$http',
    function ( $rootScope, $location, $cookieStore, $http ) {
            // keep user logged in after page refresh
            $rootScope.globals = $cookieStore.get( 'globals' ) || {};
            if ( $rootScope.globals.currentUser ) {
                $http.defaults.headers.common[ 'Authorization' ] = 'Basic ' + $rootScope.globals.currentUser.authdata; // jshint ignore:line
            }

            $rootScope.$on( '$locationChangeStart', function ( event, next, current ) {
                // redirect to login page if not logged in
                if(!$rootScope.globals.currentUser) {
                    if ( ($location.path() !== '/login' && $location.path() !== '/register')  ) {
                        $location.path( '/login' );
                    }
                } else {
                    if ( ($location.path() == '/login' || $location.path() == '/register')  ) {
                        $location.path( '/' );
                    }  
                }

            } );
    } ] );