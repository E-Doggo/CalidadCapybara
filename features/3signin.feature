Feature: Verify the login feature on Mercury site
  As a registered customer
  I want to test that I can login to my account

Background:
    Given I am on the Mercury Tours login page


Scenario Outline: Logging in with different credentials
	Given I am on the Mercury Tours login page
	When I enter the following information
		| Username:    | <username> |
		| Password:    | <password> |
	And send my login form
	Then the login <outcome>

	Examples:
		| username | password | outcome          |
		| TC1      | TC1      | is successful    |
		| 1451814  | 65191951 | fails            |
		|   		|  			| is succesful   |
		| 1  		| 1 | is succesful           |
		| LaVidaEsUnaSucesiónConstanteDeRetos,Descubrimient. 		| LaVidaEsUnaSucesiónConstanteDeRetos,Descubrimient. | fails           |
		| ¨*¨*¨*¨*      | ¨*¨*¨*¨*      | fails    |
		| aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa      | aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa      | is succesful    |


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
	

