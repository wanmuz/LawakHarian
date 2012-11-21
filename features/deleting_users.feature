Feature: Deleting users
In order to remove users
As an admin
I want to click a button and delete them

Background:
Given there are the following users:
| email | password | admin |
| admin@lawakharian.com | password | true |
| user@lawakharian.com | password | false |
And I am signed in as "admin@lawakharian.com"
Given I am on the homepage
When I follow "Admin"
And I follow "Users"

Scenario: Deleting a user
And I follow "user@lawakharian.com"
When I follow "Delete User"
Then I should see "User has been deleted"

Scenario: User cannot delete themselves
When I follow "admin@lawakharian.com"
And I follow "Delete User"
Then I should see "You cannot delete yourself!"
