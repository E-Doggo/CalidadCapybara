Feature: Mercury Tours Verify Registration
  In order to book a flight in Mercury site
  As a registered customer
  I want to test the shoppping online options

Background:
  Given I am on the Mercury Tours homepage
  And I click the "Flights" link
  

Scenario: Find A flight
  Given I press the Continue button
  Then the no flights available message should appear on screen 

Scenario: Find A flight Only changing types of service
  Given I pick the "One Way" button
  And I select 3 passangers
  And I pick to fly on "Business" Class
  And I press the Continue button
  Then the no flights available message should appear on screen

@checkNoFlightsAvailable
Scenario: Find A flight Only changing dates of flight
  Given I Select departure from "New York"
  And I select Arrival day to be on the 12 of "July"
  And I select Arrival to "Portland"
  And I select Return day to be on the 24 of "July"
  And I press the Continue button
  Then an available flight should be found