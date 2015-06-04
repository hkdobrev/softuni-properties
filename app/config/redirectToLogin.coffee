redirectToLoginConfiguration = ($rootScope, $location, ParseAuth) ->
  $rootScope.$on '$routeChangeStart', (event) ->
    if not ParseAuth.currentUser and
    $location.path() isnt '/' and
    $location.path() isnt '/login' and
    $location.path() isnt '/register'
      event.preventDefault()
      $location.path '/login'

    if ParseAuth.currentUser and
    ($location.path() is '/login' or
    $location.path() is '/register')
      event.preventDefault()
      $location.path '/'

redirectToLoginConfiguration.$inject = ['$rootScope', '$location', 'ParseAuth']

angular
  .module('properties')
  .run(redirectToLoginConfiguration)
