Feature: Viewing jokes
In order to view joke
As a user
I want to be able to see a list of jokes

Scenario: Listing all jokes

Given there is a joke called "Lawak Hari ini"
And I am on the homepage
When I follow "Lawak Hari ini"
Then I should be on the joke page for "Lawak Hari ini"