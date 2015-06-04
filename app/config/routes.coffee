routesConfig = ($routeProvider) ->
  $routeProvider
    .when '/',
      templateUrl: 'views/home.html'
      controller: 'HomeCtrl'
      controllerAs: 'HomeCtrl'

    .otherwise
      redirectTo: '/'

routesConfig.$inject = ['$routeProvider']

angular
  .module('properties')
  .config(routesConfig)
