Feature: Mercury Tours Verify Registration
    As a tester
    I want to test Mercury Tours registration page
    so I test that works correctly
Background:
    Given I am on the Mercury Tours homepage
    Then I click the "Register" link 
Scenario: Register a user on site        
	Given I enter the required fields as show below
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

Scenario: Register a user on site with confirmation of an incorrect password      
	Given I enter the required fields as show below
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
	Then error in password field "PAssword and con.password" is show

Scenario: Register a user on site with only valid user and password     
	Given I enter the required fields as show below
    |User Name: 	    | ANGYA              |
    |Password:          | alejandra          | 
    |Confirm Password:  | alejandra          |
	And send my registration form
	Then my user name is "ANGYA"

Scenario: Register a user on site with only valid user     
	Given I enter the required fields as show below
    |User Name: 	    | ANGYA              |
 
	And send my registration form
	Then my user name is "ANGYA" 

Scenario: Register a user on site with a special character in password        
	Given I enter the required fields as show below
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
    |Password:          | *          | 
    |Confirm Password:  | *          |
	And send my registration form
	Then the confirmation screen is show
	And my user name is "ANGYE"

Scenario: Register a user on site with a blank space in password        
	Given I enter the required fields as show below
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
    |Password:          |            | 
    |Confirm Password:  |            |
	And send my registration form
	Then error in password field "Can't create user" is show

Scenario: Register a user on site without dates     
	Given I enter the required fields as show below
    |User Name: 	    |          |
    |Password:          |          | 
    |Confirm Password:  |          |
	And send my registration form
	Then error in password field "Can't create user" is show

Scenario: Register a user on site        
	Given I enter the required fields as show below
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