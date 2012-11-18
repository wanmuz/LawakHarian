Feature: Creating jokes
In order to have jokes 
As a user
I want to create them easily

Background:
Given I am on the homepage
And there are the following users:
| email | password |
| wanmuz86@gmail.com | password |
When I follow "New Joke"
Then I should see "You need to sign in or sign up before continuing."
When I fill in "Email" with "wanmuz86@gmail.com"
And I fill in "Password" with "password"
And I press "Sign in"
Then I should see "Lawak baru"

Scenario: Creating a joke
And I fill in "Title" with "Lawak hari ini"
And I fill in "Description" with "Lawak hari ini kelakar sangat"
And I press "Create Joke"
Then I should see "Joke has been created."
And I should be on the joke page for "Lawak hari ini"
And I should see "Lawak hari ini - Lawak Harian"
Then I should see "Created by wanmuz86@gmail.com"

Scenario: Creating a joke without a name
And I press "Create Joke"
Then I should see "Joke has not been created."
And I should see "Title can't be blank"