'use strict';

/**
 * @ngdoc function
 * @name publicApp.controller:ProfileCtrl
 * @description
 * # ProfileCtrl
 * Controller of the publicApp
 */
angular.module('publicApp')
  .controller('ProfileCtrl', ['$scope', '$routeParams', '$http', function ($scope, $routeParams, $http) {

  	var sParams = ($routeParams.username) ? ('/'+$routeParams.username) : ('');
    
    $http.get('profile'+sParams).success(function(data) {
      
      $scope.profileinfo = data.detail;
    });
    /*
    $scope.awesomeThings = [
      'HTML5 Boilerplate',
      'AngularJS',
      'Karma'
    ];
    */
  }]);
