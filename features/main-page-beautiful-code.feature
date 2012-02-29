Feature: BioRuby.org main page beautiful code

  BioRuby is about beautiful code. The BioRuby main page should show rotating
  examples of beautiful code. Initially this will be static, eventually people
  can run it in a sand box. The example should come with a short description,
  which can be expanded on in separate pages.

  Scenario: Each page visit shows a new example of beautiful code
    Given I visit the main BioRuby.org page
    When I view the area which shows beautiful code
    Then I should see that Ruby is for beauty
    And I should see that BioRuby gives me much functionality

  Scenario: Under the example we display an explanation
    Given I see the beautiful code box
    Then I should see an explanation

  Scenario: Display a More info link
    Given I see the beautiful code box
    When I view the area which shows beautiful code
    Then I should see a 'More info' link
    And it takes me to the relevant page
    
  Scenario: Display a RUN button
    Given I see the beautiful code box
    When I view the area which shows beautiful code
    Then I should see a RUN button
    And it should execute the code

  Scenario: Display an EDIT button
    Given I see the beautiful code box
    When I view the area which shows beautiful code
    Then I should see an EDIT button
    And it should allow editing the code


