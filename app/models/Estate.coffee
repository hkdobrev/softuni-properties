EstateModelProvider = (ParseModel) ->
  class Estate extends ParseModel
    @configure "Estate", "name"

EstateModelProvider.$inect = ['ParseModel']

angular
  .module('properties')
  .factory('Estate', EstateModelProvider)
