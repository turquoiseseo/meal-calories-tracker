Feature: User Authentication
    Scenario: A user clicks the logout button
        Given a valid user is logged in successfully
        When the user clicks the logout button
        Then the current login session should expire
        And the user should be redirected to the login page
