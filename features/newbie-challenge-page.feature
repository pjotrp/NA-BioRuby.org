Feature: Create challenges for newbies using github issues

  We want to create a page that lists challenges for newbies. These
  challenges are harvested from github issues tagged with the 'newbie' 
  tag.

  Scenario: The coding challenges page
    Given a user visits the BioRuby challenges page
    When the page gets shown
    Then I want to show all known issues in all biogems that have been tagged 'newbie'
 
