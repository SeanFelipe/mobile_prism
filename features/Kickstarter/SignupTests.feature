Feature: Signup tests

  Scenario: Create a new user account
    Given I launch the app
    When I select Sign up or Log in
    And I select Sign up on the Sign up or Log in screen
    And I enter name "Mobile Prism" with a unique timestamp
    And I enter email "mobileprism@addlightness.tech" plus the unique timestamp
    And I enter password "mobileprism"
    And I click go
    Then I see the message "Welcome!"

  Scenario: Try to log in with invalid credentials
    Given I launch the app
    When I try to login with an invalid user "foo"
    Then I debug for a while
