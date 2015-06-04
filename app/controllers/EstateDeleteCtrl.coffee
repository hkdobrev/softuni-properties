EstateDeleteCtrl = (
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

  @delete = () ->
    if $window.confirm 'Are you sure you want to delete this estate?'
      @estate.destroy().then ->
        $location.path '/estates'

  Category.query().then (categories) =>
    @categories = categories

  return

EstateDeleteCtrl.$inject = [
  'estate'
  'Category'
  'ParseAuth'
  '$location'
  '$window'
]

angular
  .module('properties')
  .controller('EstateDeleteCtrl', EstateDeleteCtrl)
