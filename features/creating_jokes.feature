Feature: Creating jokes
In order to have jokes 
As a user
I want to create them easily

Background:
Given I am on the homepage
When I follow "New Joke"

Scenario: Creating a joke
And I fill in "Title" with "Lawak hari ini"
And I fill in "Description" with "Lawak hari ini kelakar sangat"
And I press "Create Joke"
Then I should see "Joke has been created."
And I should be on the joke page for "Lawak hari ini"
And I should see "Lawak hari ini - Lawak Harian"

Scenario: Creating a joke without a name
And I press "Create Joke"
Then I should see "Joke has not been created."
And I should see "Title can't be blank"