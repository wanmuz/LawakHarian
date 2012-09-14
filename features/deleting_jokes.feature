Feature: Deleting jokes
In order to remove needless facts
As a project manager
I want to make them disappear

Scenario: Deleting a joke
Given there is a joke called "Lawak hari ini"
And I am on the homepage
When I follow "Lawak hari ini"
And I follow "Delete Joke"
Then I should see "Joke has been deleted."
Then I should not see "Lawak hari ini"