EstateNewCtrl = (Estate, Category, ParseAuth, $location, $window) ->
  @estate = new Estate
    category: new Category()
  @categories = []

  @save = =>
    @estate.price = $window.parseInt @estate.price, 10
    @estate.ACL =
        "#{ParseAuth.currentUser.objectId}":
          write: true
          read: true
        "*":
          read: true

    @estate.save().then ->
      $location.path '/estates'

  Category.query().then (categories) =>
    @categories = categories

  return

EstateNewCtrl.$inject = [
  'Estate'
  'Category'
  'ParseAuth'
  '$location'
  '$window'
]

angular
  .module('properties')
  .controller('EstateNewCtrl', EstateNewCtrl)
