angular.module 'properties', [
  'ngRoute'
  'ngResource'
  'Parse'
]

resumeParseSession = (ParseAuth, $rootScope) ->
  ParseAuth.resumeSession()
  $rootScope.auth = ParseAuth

resumeParseSession.$inject = ['ParseAuth', '$rootScope']

angular
  .module('properties')
  .run resumeParseSession
