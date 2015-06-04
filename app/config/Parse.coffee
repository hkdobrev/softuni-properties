ParseConfiguration = (ParseProvider) ->
  ParseProvider.initialize(
    'FZjgCPFKtV2UV2WrmTOQGuxNqTtrAukaMR9UkZNF'
    'l8lDqFPZx1Kfa2AVf8IpxVZDKo3KdQKmJqvTWWrv'
  )

ParseConfiguration.$inject = ['ParseProvider']

angular
  .module('properties')
  .config(ParseConfiguration)
