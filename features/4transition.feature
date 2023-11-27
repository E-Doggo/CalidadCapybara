Feature: Mercury Tours Verify transtition
  In order to guarantee the minimal functions of Mercury
  As an administrator
  I want to test the transtitions from the main page

Scenario: Load Flights page
    Given I am on the Mercury Tours homepage
    And I click the "Flights" link
    Then the "Flights" Page should load with all its components

Scenario: Load Sign-On page
    Given I am on the Mercury Tours homepage
    And I click the "SIGN-ON" link
    Then the "SIGN-ON" Page should load with all its components


Scenario: Load Register page
    Given I am on the Mercury Tours homepage
    And I click the "REGISTER" link
    Then the "REGISTER" Page should load with all its components

