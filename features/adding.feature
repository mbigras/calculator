Feature: Adding

  Scenario: Add two numbers
    Given the input "2+2"
    When the calculator is run
    Then the output should be "4"

    Given the input "1+2"
    When the calculator is run
    Then the output should be "3"