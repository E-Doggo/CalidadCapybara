Feature: Mercury Tours Verify transtition
  In order to guarantee the minimal functions of Mercury
  As an administrator
  I want to test the transtitions from the main page

Scenario: Load Flights page
    Given I am on the Mercury Tours homepage
    And I click the "Flights" link
    Then the "Flights" Page should be shown correctly with the following format
    |Button selection   | Round trip         |
    |Button selection   | One Way            |
    |Multiple selection | Passengers         |
    |Multiple selection | Departing From     |
    |Multiple selection | On Month           |
    |Multiple selection | On Day             |	
    |Multiple selection | Arriving In        | 	
    |Multiple selection | Returning Month    |
    |Multiple selection | Returning Day      |
    |Button selection   | Economy Class      |
    |Button selection   | Business Class     | 
    |Button selection   | First Class        |

Scenario: Load Sign-On page
    Given I am on the Mercury Tours homepage
    And I click the "SIGN-ON" link
    Then the "SIGN-ON" Page should load with all its components


Scenario: Load Register page
    Given I am on the Mercury Tours homepage
    And I click the "REGISTER" link
    Then the "REGISTER" Page should load with all its components

