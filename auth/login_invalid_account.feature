Feature: User Authentication
    Scenario: Rejecting login without an existing account
        Given no user account exist with the provided username
        When a user attempts to log in with an invalid username and password
        Then an error message should be displayed saying "User does not exist"