Feature: Creating jokes
In order to have jokes 
As a user
I want to create them easily
Scenario: Creating a joke
Given I am on the homepage
When I follow "New Joke"
And I fill in "Title" with "Lawak hari ini"
And I fill in "Description" with "Lawak hari ini kelakar sangat"
And I press "Create Joke"
Then I should see "Joke has been created."