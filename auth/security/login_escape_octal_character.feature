Feature: User Authentication
    Scenario: Octal characters embedded in the username and/or password
        Given a valid username and password exist
        When a username attempts to log in with Octal characters in the usenrame and/or password
        Then Octal characters are not processed as SQL syntax
        And the system treats all Octal characters as plain text