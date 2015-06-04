CategoryModelProvider = (ParseModel) ->
  class Category extends ParseModel
    @configure "Category", "name"

CategoryModelProvider.$inect = ['ParseModel']

angular
  .module('properties')
  .factory('Category', CategoryModelProvider)
