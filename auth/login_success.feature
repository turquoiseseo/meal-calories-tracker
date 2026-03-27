Feature: User Authentication
    Scenario: Successful login with valid credentials
        Given a user account exists with a valid username and password
        When a user logs using a valid username and password
        Then a user should be directed to their dashboard