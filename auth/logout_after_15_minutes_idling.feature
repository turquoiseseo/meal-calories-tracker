Feature: User Authentication
    Scenario: Logout after 15 minutes of inactivity
        Given a valid user is logged in successfully
        When the user is idle or inactive for 15 minutes or more
        Then the user's login session should expire
