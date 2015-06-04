LogInCtrl = (ParseAuth, $location) ->
  @user = {}
  @errorMessage = null

  @logIn = (user) =>
    unless user.username and user.password
      return @errorMessage = 'Please supply a username and password'

    ParseAuth.login(user.username, user.password).then ->
      $location.path '/'
    , (err) =>
      @errorMessage = err.data.error

    return

  return

LogInCtrl.$inject = ['ParseAuth', '$location']

angular
  .module('properties')
  .controller('LogInCtrl', LogInCtrl)
