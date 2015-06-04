html5ModeConfiguration = ($locationProvider) ->
  $locationProvider.html5Mode true

html5ModeConfiguration.$inject = ['$locationProvider']

angular
  .module('properties')
  .config(html5ModeConfiguration)
