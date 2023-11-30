Feature: Mercury Tours Flight Finder
  In order to book a flight in Mercury site
  As a customer
  I want to find flights that accomadate my needs

Background:
  Given I am on the Mercury Tours homepage
  And I click the "Flights" link

Scenario: Find A flight only changing the type of flight and type of seat
  Given I pick the "One Way" button
  When I select 3 passangers
  And I pick to fly on "Business" Class
  And I press the Continue button
  Then the no flights available message should appear on screen

@checkNoFlightsAvailable
Scenario: Find A flight Only changing dates of flight and place of origin and destination
  Given I Select departure from "New York"
  When I select Arrival day to be on the 12 of "July"
  And I select Arrival to "Portland"
  And I select Return day to be on the 24 of "July"
  And I press the Continue button
  Then an available flight should be found

Scenario: Find A flight Only changing dates of flight and place of origin and destination
  Given I Select departure from "New York"
  When I select Arrival day to be on the 30 of "July"
  And I select Arrival to "Portland"
  And I select Return day to be on the 24 of "July"
  And I press the Continue button
  Then the page should show an alert that the dates are incorrect
