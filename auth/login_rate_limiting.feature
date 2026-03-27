Feature: User Authentication
    Scenario: Rate limiting for invalid accounts
        Given the provided username and password are invalid
        When a user, user-agent, or reverse proxy attempts to log in with an invalid username and/or password
        And the next login attempts occur instantly, continuously, and without stopping
        And after 4 consecutive invalid login attempts
        Then the source IP address should be banned from logging in for 15 minutes