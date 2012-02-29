Feature: BioRuby.org main page direct answer section

  The BioRuby project main page is the entry page for new comers to the
  project. Visitors who are not (yet) on IRC or the mailing list, should be
  encouraged to post questions and receive immediate answers. Privacy is
  important. One way to achieve this would be a Jabber connection to a 'room'
  where BioRuby members connect. Similar to IRC, but available directly from
  the main page. This chat will not be logged, so spammers will have no
  obvious benefit.

  Scenario: BioRuby.org newbie visitor with a question
    Given I visit the main BioRuby.org page and someone is online
    When I click the button for contacting BioRuby
    And someone is online
    Then I should be able to post a private question
    And get an answer

  Scenario: BioRuby.org newbie visitor with a question (2)
    Given I visit the main BioRuby.org page and no one is online
    When I click the button for contacting BioRuby
    And no one is online
    Then I should be able to post a private question with an E-mail address
    And get an answer over E-mail
