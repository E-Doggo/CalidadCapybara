Feature: Verify the login feature on Mercury site
  As a registered customer
  I want to test that I can login to my account

Background:
    Given I am on the Mercury Tours login page


Scenario: Succesfull login
	Given I am on the Mercury Tours login page
	When I enter the following information
	|Username: 	        | TC1            |
    |Password:          | TC1            | 
	And send my login form
	Then the login is succesfull

Scenario: Failed login
	Given I am on the Mercury Tours login page
	When I enter the following information
	|Username: 	        | 1451814            |
    |Password:          | 65191951            | 
	And send my login form
	Then the login is failed

Scenario: Login without credentials     
	Given I am on the Mercury Tours login page
	When I enter the following information
	|Username: 	        | |
    |Password:          | | 
	And send my login form
	Then the login is succesfull

Scenario: No session is saved  
	Given I am on the Mercury Tours login page
	When I enter the following information
	|Username: 	        | TC1 |
    |Password:          | TC1 | 
	And send my login form
	When the login is succesfull
	And the "SIGN-OFF" button is shown 
	And I click the "Home" button
	Then the "SIGN-ON" button is shown
	

