Feature: Test scoring system

  Scenario: When Mario is clicked score should increase
    Given the score begins at "0"
    When I click Mario
    Then the score increases to "1" within "1" seconds
    When I click Mario again
    Then the score increases to "1" within "1" seconds
    #Then I debug for a while
