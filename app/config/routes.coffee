estateResolver = ($route, Estate) ->
  estate = Estate.find $route.current.params.estateId
  return estate

estateResolver.$inejct = ['$route', 'Estate']

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

    .when '/estates/new',
      templateUrl: 'views/estate.html'
      controller: 'EstateNewCtrl'
      controllerAs: 'EstateCtrl'

    .when '/estates/:estateId/edit',
      templateUrl: 'views/estate.html'
      controller: 'EstateEditCtrl'
      controllerAs: 'EstateCtrl'
      resolve:
        estate: estateResolver

    .otherwise
      redirectTo: '/'

routesConfig.$inject = ['$routeProvider']

angular
  .module('properties')
  .config(routesConfig)
