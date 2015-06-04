redirectToLoginConfiguration = ($rootScope, $location, ParseAuth) ->
  $rootScope.$on '$routeChangeStart', (event) ->
    if not ParseAuth.currentUser and
    $location.path() isnt '/' and
    $location.path() isnt '/login' and
    $location.path() isnt '/register'
      event.preventDefault()
      $location.path '/login'

redirectToLoginConfiguration.$inject = ['$rootScope', '$location', 'ParseAuth']

angular
  .module('properties')
  .run(redirectToLoginConfiguration)
