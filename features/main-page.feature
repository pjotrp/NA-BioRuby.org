Feature: BioRuby.org main page

  The BioRuby project main page is the entry page for new comers to the project. This
  page should be informative, without information overload. It should invite people
  to 'jump right in'. Rob Syme made one nice example: 

    http://bioruby.open-bio.org/wiki/Bioruby_site_Re-styling

  In this feature we describe scenarios for a visiting biologist, bioinformatician,
  and (non-bio) Ruby coder.

  For 'news' scenarios, see the main-page-news.feature. For beautiful code see
  the main-page-beautiful-code.feature. For 'direct-answers' see the
  main-page-direct-answers.feature.

  Scenario: Visiting biologist
    Given I visit the main BioRuby.org page
    When I view the area for Biology
    Then I should see that Ruby is easy to learn
    And I should see that BioRuby gives me much functionality
    When I click the topic
    Then I should be taken to an area suitable for biologists

  Scenario: Visiting bioinformatician
    Given I visit the main BioRuby.org page
    When I view the area for Bioinformatics
    Then I should see that Ruby is easy to learn
    And I should see that BioRuby gives me much functionality
    And I should see that Ruby offers modularity and agility
    When I click the topic
    Then I should be taken to an area suitable for bioinformaticians

  Scenario: Visiting Ruby coder
    Given I visit the main BioRuby.org page
    When I view the area for coders
    Then I should see that Bioinformatics is exciting
    And I should see that BioRuby gives me much functionality
    When I click the topic
    Then I should be taken to an area suitable for Ruby coders


