(function () {

    var app = angular.module('cgpaApp',['ngRoute','ngAnimate','ngMessages','toggleCheckbox','mgcrea.ngStrap']);
    
    app.config(function ($routeProvider){
        $routeProvider
            .when('/',{
                controller: 'cgpaController',
                templateUrl:'/app/views/cgpacalculate.html'
            })
            .when('/about',{
                templateUrl:'/app/views/about.html'
            })
            .otherwise({ redirectTo:'/'});
    });
})();