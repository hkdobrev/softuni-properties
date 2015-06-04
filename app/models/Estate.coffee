EstateModelProvider = (ParseModel) ->
  class Estate extends ParseModel
    @configure "Estate", "name", "price", "category", "ACL"

EstateModelProvider.$inect = ['ParseModel']

angular
  .module('properties')
  .factory('Estate', EstateModelProvider)
