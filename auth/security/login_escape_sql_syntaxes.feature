Feature: User Authentication
    Scenario: SQL syntax is embedded in the username and/or password
        Given the user enters SQL syntax into the username and/or password fields
        When the user clicks the login button
        Then the system should treat the input as plain text and not execute any SQL commands
        And the login attempt should fail with a generic error message

