Feature: Deleting jokes
In order to remove needless facts
As a project manager
I want to make them disappear

Scenario: Deleting a joke
Given there are the following users:
| email | password |
| wanmuz86@gmail.com | password |
And I am signed in as them
And "wanmuz86@gmail.com" has created "Lawak Hari ini"
And I am on the homepage
When I follow "Lawak Hari ini"
And I follow "Delete Joke"
Then I should see "Joke has been deleted."
Then I should not see "Lawak hari ini"