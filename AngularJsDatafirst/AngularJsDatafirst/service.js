/// <reference path="c:\users\mohon-pc\documents\visual studio 2015\Projects\AngularJsDatafirst\AngularJsDatafirst\scripts/angular.js" />

var EmployeeService = angular.module('EmployeeService', []);
EmployeeService.factory('EmpApi', function ($http) {

    var urlBase = "http://localhost:53631/api/";
    var EmpApi = {};
    EmpApi.getEmployees = function () {
        return $http.get(urlBase + '/Employees');
    };

});