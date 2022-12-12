@web @UI @functional @e2e

  Feature: Sign in
    As a visitor
    I want to be able to sign in
    In order to became a user

    Background: Way to login page
      Given there is a registered user
      When I am on Special Child site
      And I go to login page

  Scenario: sign in (UI checking Sign in)
    Then login page is opened
    And login page should contain login field
    And login page should contain password field
    And login page should contain submit button

  Scenario: sign in (functional positive flow)
    When I am on login page
    And I fill login field with my login
    And I fill password field with my password
    And I click on submit button
    Then I am sign in the site

  Scenario: sign in (functional negative flow with non-valid login)
    And I fill login field with my random login
    And I fill password field with my password
    And I click on submit button
    Then I should see error message

  Scenario: sign in (functional negative flow with non-valid password)
    And I fill login field with my login
    And I fill password field with my random password
    And I click on submit button
    Then I should see error message
