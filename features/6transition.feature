Feature: Mercury Tours Verify transtition
  In order to guarantee the minimal functions of Mercury
  As an administrator
  I want to test the transtitions from the main page

Background:
    Given I am on the Mercury Tours homepage

Scenario: Load Flights page
    When I click the "Flights" link
    Then the "Flights" Page should be shown correctly with the following format
    |Button             | Round trip         |
    |Button             | One Way            |
    |Deployable list    | Passengers         |
    |Deployable list    | Departing From     |
    |Deployable list    | On Month           |
    |Deployable list    | On Day             |	
    |Deployable list    | Arriving In        | 	
    |Deployable list    | Returning Month    |
    |Deployable list    | Returning Day      |
    |Button             | Economy Class      |
    |Button             | Business Class     | 
    |Button             | First Class        |

Scenario: Load Sign-On page
    When I click the "SIGN-ON" link
    Then the "SIGN-ON" Page should be shown correctly with the following format
    |Text             | User Name            |
    |Text             | Password             |


Scenario: Load Register page
    When I click the "REGISTER" link
    Then the "REGISTER" Page should be shown correctly with the following format
    |Text             |First Name 	          |
    |Text             |Last Name 	          |
    |Text             |Phone 	              |
    |Text             |Email 	              |
    |Text             |Address                |
    |Text             |City 	              |
    |Text             |State/Province         |
    |Text             |Postal Code 	          |
    |Text             |Country 	              |
    |Text             |User Name 	          |
    |Text             |Password               |
    |Text             |Confirm Password       |

