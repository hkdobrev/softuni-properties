EstatesCtrl = (Estate) ->
  @estates = []

  Estate.query (
    include: 'category'
  )
  .then (estates) =>
    @estates = estates

  return

EstatesCtrl.$inject = ['Estate']

angular
  .module('properties')
  .controller('EstatesCtrl', EstatesCtrl)
