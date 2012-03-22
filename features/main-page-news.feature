Feature: BioRuby.org main page - news items

  The BioRuby project main pages should show BioRuby related 'news' items, using 
  different feeds, such as twitter and github. Also the output of news should
  have different targets - i.e. the main page, twitter, IRC and RSS

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

  Scenario: Update RSS
    Given the news item list
    When a new item gets added
    Then it should be displayed on the main page
    And it should be updated on RSS
    And it should be pushed to twitter
    And it should be pushed to the IRC channel
