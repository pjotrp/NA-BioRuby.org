Feature: Show biogem status of Travis-ci builds

  Many biogems are using travis for continuous integration testing.
  Biogems.info show the status of the *last* commit to the master branch. We
  would like to display more information in a nice overview. First show the
  Rubies tested against, coloured by status. Also, it would be good to tie a
  release of the biogem (as downloadable from rubygems.org) with its testing
  results (not sure how to do that now).

  Scenario: When the build status changes, update the biogem information
    When the build status changes of a biogem
    Then update the biogem info

  Scenario: When the build status changes, update the RSS feed
    When the build status changes of a biogem
    Then update the RSS feed
