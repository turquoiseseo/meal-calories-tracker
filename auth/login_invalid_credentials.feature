Feature: User Authentication
    Scenario: Rejecting login with invalid username or password
        Given a user account exists with a valid username and password
        When a user attempts to log in with an invalid username or password
        Then an error message should be displayed saying "Invalid username or password!"