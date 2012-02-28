Feature: BioRuby.org main page - news items

  The BioRuby project main pages should show BioRuby related 'news' items, using 
  different feeds, such as twitter and github.

  Scenario: Update Twitter feed
    Given a registered Twitter feed
    When someone sends an update
    Then it should be displayed live on the main page

  Scenario: Update github commits
    Given a registered github resource
    When someone updates github
    Then it should be displayed live on the main page

  Scenario: Update biogem/rubygems releases
    Given a registered biogem
    When someone updates rubygems
    Then it should be displayed live on the main page

