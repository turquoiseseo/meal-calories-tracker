Feature: User Authentication
    Scenario: ASCII characters embedded in the username and/or password
        Given a valid username and password exist
        When a user attempts to log in using ASCII characters in the username and/or password fields
        Then ASCII characters are not processed as SQL syntax
        And the system treats all ASCII characters as plain text
