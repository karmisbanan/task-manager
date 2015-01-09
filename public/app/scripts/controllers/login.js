'use strict';

/**
 * @ngdoc function
 * @name publicApp.controller:LoginCtrl
 * @description
 * # LoginCtrl
 * Controller of the publicApp
 */
angular.module( 'publicApp' )
    .controller( 'LoginCtrl', [ '$scope', '$location', 'Auth',
    function ( $scope, $location, Auth ) {
            // reset login status
            Auth.ClearCredentials();

            $scope.login = function () {
                $scope.dataLoading = true;
                Auth.Login( $scope.username, $scope.password, function ( response ) {
                    if ( response.status === 'ok' ) {
                        Auth.SetCredentials( response.detail );
                        $location.path( '/' );
                    } else {
                        $scope.error = response.detail;
                        $scope.dataLoading = false;
                    }
                } );
            };
    } ] );