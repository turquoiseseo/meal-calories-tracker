Feature: User Authentication
    Scenario: Remember me is checked
        Given a user account exists with a valid username and password
        When the user checks "Remember me" before logging in
        And the user successfully logs in
        And the remembered state is saved
        And the user returns to the login form
        Then "Remember me" should be checked and the username should be prefilled