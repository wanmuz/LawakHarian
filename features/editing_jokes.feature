Feature: Editing Jokes
In order to update joke information
As a user
I want to be able to do that through an interface

Background:
Given there are the following users:
| email | password |
| wanmuz86@gmail.com | password |
And I am signed in as them
And "wanmuz86@gmail.com" has created "Lawak Hari ini"
And I am on the homepage
When I follow "Lawak Hari ini"
And I follow "Edit Joke"
Scenario: Updating a joke

And I fill in "Title" with "Pak pandir"
And I press "Update Joke"
Then I should see "Joke has been updated."
Then I should be on the joke page for "Pak pandir"

Scenario: Updating a joke with invalid attributes is bad
And I fill in "Title" with ""
And I press "Update Joke"
Then I should see "Joke has not been updated."