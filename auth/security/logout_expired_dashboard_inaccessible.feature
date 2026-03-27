Feature: User Authentication
    Scenario: After a successful logout
        Given the user's session has already expired
        When the user directly accesses any dashboard URL through browser history
        Then no dashboard pages should be accessible after logout
        And any direct access to dashboard URLs should redirect the user to the login page
