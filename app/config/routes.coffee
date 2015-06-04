routesConfig = ($routeProvider) ->
  $routeProvider
    .when '/',
      templateUrl: 'views/home.html'
      controller: 'HomeCtrl'
      controllerAs: 'HomeCtrl'

    .when '/login',
      templateUrl: 'views/logIn.html'
      controller: 'LogInCtrl'
      controllerAs: 'LogInCtrl'

    .when '/register',
      templateUrl: 'views/register.html'
      controller: 'RegisterCtrl'
      controllerAs: 'RegisterCtrl'

    .otherwise
      redirectTo: '/'

routesConfig.$inject = ['$routeProvider']

angular
  .module('properties')
  .config(routesConfig)
