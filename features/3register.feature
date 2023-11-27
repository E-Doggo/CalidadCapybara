Feature: Mercury Tours Verify Registration
    As a tester
    I want to test Mercury Tours registration page
    so I test that works correctly

Scenario: Register a user on site        
	Given I am on the Mercury Tours homepage
	And I click the "Register" link
	When I enter the required fields as show below
	|First Name: 	    | Angy               |
    |Last Name: 	    | Encinas            |
    |Phone: 	        | 60793960           |
    |Email: 	        | angy@ucb.edu.bo    |
    |Address:           | Av. America #104   |	
    |City: 	            | Cochabamba         |
    |State/Province:    | Cochabamba         | 	
    |Postal Code: 	    | 0000               |
    |Country: 	        | BOLIVIA            |
    |User Name: 	    | ANGYE              |
    |Password:          | alejandra          | 
    |Confirm Password:  | alejandra          |
	And send my registration form
	Then the confirmation screen is show
	And my user name is "ANGYE"
@only
Scenario: Register a user on site with confirmation of an incorrect password      
	Given I am on the Mercury Tours homepage
	And I click the "Register" link
	When I enter the required fields as show below
	|First Name: 	    | Angy               |
    |Last Name: 	    | Encinas            |
    |Phone: 	        | 60793960           |
    |Email: 	        | angy@ucb.edu.bo    |
    |Address:           | Av. America #104   |	
    |City: 	            | Cochabamba         |
    |State/Province:    | Cochabamba         | 	
    |Postal Code: 	    | 0000               |
    |Country: 	        | BOLIVIA            |
    |User Name: 	    | ANGYE              |
    |Password:          | alejandra          | 
    |Confirm Password:  | aladjandr          |
	And send my registration form
	Then error "PAssword and con.password" is show
