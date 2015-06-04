ParseConfiguration = (ParseProvider) ->
  ParseProvider.initialize(
    'FZjgCPFKtV2UV2WrmTOQGuxNqTtrAukaMR9UkZNF'
    's8OvD63QuVuGlUeZnl79jwo3Fme1TzN3V6Hik2qB'
  )

ParseConfiguration.$inject = ['ParseProvider']

angular
  .module('properties')
  .config(ParseConfiguration)
