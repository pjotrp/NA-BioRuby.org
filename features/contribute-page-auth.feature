Feature: User authentication

  The NA-BioRuby.org website should be dynamic, allowing users to improve
  content, submit news and code examples.

  User authentication is neccessary to make that possible.

  Scenario: User wants to sign in
    Given I visit the "/contribute" page
    When I look somewhere near top of the page
    Then I should see a "Sign in or sign up" link
    When I click on "Sign in or sign up"
    Then I should see email and password fields
    And I should see a "Sign in with GitHub" link
    And I should see a "Register a new account" link

  Scenario: A new user signs up for a new email/password account
    Given I visit the "/sign_in" page
    When I click on "Register a new account"
    Then I should see a form for a new name/email/password account
    When I fill out the form with my name, email and password
    Then I should be notified that the account has been created

  Scenario: An existing user signs in using email/password
    Given I have an existing user account
    And I visit the "/sign_in" page
    When I fill in my email and password
    Then I should be taken to the "/contribute" page
    And I should see "Signed in successfully"

