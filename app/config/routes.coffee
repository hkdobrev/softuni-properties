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

    .when '/estates',
      templateUrl: 'views/estates.html'
      controller: 'EstatesCtrl'
      controllerAs: 'EstatesCtrl'

    .otherwise
      redirectTo: '/'

routesConfig.$inject = ['$routeProvider']

angular
  .module('properties')
  .config(routesConfig)
