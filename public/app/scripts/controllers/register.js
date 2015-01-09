'use strict';

/**
 * @ngdoc function
 * @name publicApp.controller:RegisterCtrl
 * @description
 * # RegisterCtrl
 * Controller of the publicApp
 */
angular.module( 'publicApp' )
    .controller( 'RegisterCtrl', [ '$scope', '$location', 'Auth',
    function ( $scope, $location, Auth ) {
            // reset login status
            Auth.ClearCredentials();

            $scope.register = function () {
                $scope.dataLoading = true;
                var data = {
                    username: $scope.username,
                    password: $scope.password,
                    name: $scope.name,
                    email: $scope.email
                }
                Auth.Register( data, function ( response ) {
                    if ( response.status === 'ok' ) {
                        Auth.SetCredentials( data );
                        $location.path( '/' );
                    } else {
                        $scope.error = response.detail;
                        $scope.dataLoading = false;
                    }
                } );
            };
  } ] );