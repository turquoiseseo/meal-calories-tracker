Feature: User Authentication
    Scenario: Hex characters embedded in the username and/or password
    Given a valid username and password exist
    When a user attempts to log in using Hex characters in the username and/or password fields
    Then Hex characters are not processed as SQL syntax
    And the system treats all Hex characters as plain text