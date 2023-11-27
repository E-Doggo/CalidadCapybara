Feature: Verify the login feature on Mercury site
  In order to book a flight in Mercury site
  As a registered customer
  I want to test that I can login to my account


Scenario: TC1-SuccesfullLogin     
	Given I am on the Mercury Tours login page
	When I enter the following information
	|Username: 	        | amogus            |
    |Password:          | amogus            | 
	And send my login form
	Then the login is succesfull
