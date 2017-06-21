/// <reference path="c:\users\mohon-pc\documents\visual studio 2015\Projects\AngularJsDatafirst\AngularJsDatafirst\scripts/angular.js" />


var MyApp = angular.module('MyApp', ['ngRoute', 'EmployeeService']);

MyApp.config(function ($routeProvider) {
    $routeProvider
	.when('/Add', {
	    templateUrl: 'views/add.html',
	    controller: 'AddController'
	})
	.when('/Edit', {
	    templateUrl: 'views/edit.html',
	    controller: 'EditController'
	})
	.when('/Delete', {
	    templateUrl: 'views/delete.html',
	    controller: 'DeleteController'
	})
	.when('/Home', {
	    templateUrl: 'views/home.html',
	    controller: 'HomeController'
	})
	.otherwise({
	    redirectTo: '/Home'
	});
});

MyApp.controller("AddController", function ($scope) {
    $scope.message = "In Add View";
});
MyApp.controller("EditController", function ($scope) {
    $scope.message = "In Edit View";
});
MyApp.controller("DeleteController", function ($scope) {
    $scope.message = "In Delete View";
});
MyApp.controller("HomeController", function ($scope, EmpApi) {
    getEmployees();
    function getEmployees() {
        EmpApi.getEmployees().success(function (emps) {
            $scope.emps = emps;
        })
        .error(function (error) {
            $scope.status = 'Unable to load emp data: ' + error.message;
        })
    }
});