'use strict';

/**
 * @ngdoc function
 * @name publicApp.controller:ProjectsCtrl
 * @description
 * # ProjectsCtrl
 * Controller of the publicApp
 */
angular.module('publicApp')
  .controller('ProjectsCtrl', ['$scope', '$routeParams', '$http', function ($scope, $routeParams, $http) {

  	var sParams = ($routeParams.projectid) ? ('/'+$routeParams.projectid) : ('');
    
    $http.get('projects'+sParams).success(function(data) {
      
      
      $scope.projectslist = data;
    });
    /*
    $scope.awesomeThings = [
      'HTML5 Boilerplate',
      'AngularJS',
      'Karma'
    ];
    */
  }]);
