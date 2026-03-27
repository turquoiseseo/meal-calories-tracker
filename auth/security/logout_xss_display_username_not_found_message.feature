Feature: User Authentication
    Scenario: Display username not found message
        Given a username does not exist
        When a user attempts to log in with that username
        Then a "username not found" message is shown to the user
        And the reflected username is displayed as plain text
        And the reflected username is rendered without executing any JavaScript
