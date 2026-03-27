Feature: User Authentication
    Scenario: Successful login with valid credentials
        Given a user account exists with a valid username and password
        When a user logs using a valid username and password
        Then a user should be directed to their dashboard

    Scenario: Rejecting login without an existing account
        Given no user account exist with the provided username
        When a user attempts to log in with an invalid username and password
        Then an error message should be displayed saying "User does not exist"

    Scenario: Rejecting login with invalid username or password
        Given a user account exists with a valid username and password
        When a user attempts to log in with an invalid username or password
        Then an error message should be displayed saying "Invalid username or password!"

    Scenario: Remember me is checked
        Given a user account exists with a valid username and password
        When the user checks "Remember me" before logging in
        And the user successfully logs in
        And the remembered state is saved
        And the user returns to the login form
        Then "Remember me" should be checked and the username should be prefilled

    

