EstateEditCtrl = (
  estate,
  Category,
  ParseAuth,
  $location,
  $window
) ->

  if not estate.ACL[ParseAuth.currentUser.objectId].read
    $location.path '/estates'

  @categories = []
  @estate = estate

  @save = () ->
    @estate.price = $window.parseInt @estate.price, 10

    @estate.update().then ->
      $location.path '/estates'

  Category.query().then (categories) =>
    @categories = categories

  return

EstateEditCtrl.$inject = [
  'estate'
  'Category'
  'ParseAuth'
  '$location'
  '$window'
]

angular
  .module('properties')
  .controller('EstateEditCtrl', EstateEditCtrl)
