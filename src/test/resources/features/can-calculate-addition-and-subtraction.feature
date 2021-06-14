#Author: mwalsh@qa.com

Feature: Can calculate addition and subtraction correctly?
  To test whether addition and subtraction return the correct
  results.

  Scenario: 3 add 4 is 7
    Given a calculator
    When 3 and 4 are added
    Then the result should be 7

  Scenario: 4 subtract 3 is 1
    Given a calculator
    When 3 is subtracted from 4
    Then the result should be 1

  Scenario: 3 multiplied 4 is 12
    Given a calculator
    When 3 and 4 are multiplied
    Then the result should be 12

  Scenario: 8 divide 4 is 2
    Given a calculator
    When 8 is divided by 4
    Then the result should be 2