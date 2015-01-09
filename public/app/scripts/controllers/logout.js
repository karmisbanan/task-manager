'use strict';

/**
 * @ngdoc function
 * @name publicApp.controller:LogoutCtrl
 * @description
 * # LogoutCtrl
 * Controller of the publicApp
 */
angular.module('publicApp')
  .controller('LogoutCtrl', [ '$scope', '$location', 'Auth',
    function ( $scope, $location, Auth ) {
            $scope.logout = function () {
                $scope.dataLoading = true;
                Auth.Logout(function ( response ) {
                	Auth.ClearCredentials();
                    $location.path( '/login' );
                    if ( response.status !== 'ok' ) {
                    	console.error('LogoutCtrl - '+response.detail);
                        // $scope.error = response.detail;
                        // $scope.dataLoading = false;
                    }
                } );
            };
    } ] );
