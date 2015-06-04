RegisterCtrl = (ParseAuth, $location) ->

  @user = {}
  @errorMessage = null

  @register = (user) =>
    if user.password isnt user.passwordConfirmation
      @errorMessage = 'Passwords must match'
      return

    unless user.username and user.password
      @errorMessage = 'Please supply a username and password'
      return

    ParseAuth.register(user.username, user.password).then ->
      $location.path '/'
    , (err) =>
      @errorMessage = err.data.error

    return

  return

RegisterCtrl.$inject = ['ParseAuth', '$location']

angular
  .module('properties')
  .controller('RegisterCtrl', RegisterCtrl)
