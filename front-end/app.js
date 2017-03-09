'use strict';

(function(){  
    angular
        .module('app', ['ngRoute'])
        .config(config);

    config.$inject = ['$routeProvider','$locationProvider'];

    function config($routeProvider, $locationProvider){
        $routeProvider
            /*.when('/', {
                'templateUrl': 'views/login.html',
                'caseInsensitiveMatch': true,
                'controller' : 'UserController',
                'access': { requiredAuthentication: false }
            })*/
            
    }
})();
