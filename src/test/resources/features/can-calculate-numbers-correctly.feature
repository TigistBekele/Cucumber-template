#Author: mwalsh@qa.com

Feature: Can calculate numbers correctly?
  To test whether addition, subtraction, multiplication and division return the correct
  results.
  
  Todo:
  
  - Implement subtraction
  - Implement division
  - Implement multiplication
    Scenario Outline: <left_operand> add <right_operand> is <expected_result>
    Given a calculator
    When <left_operand> and <right_operand> are added
    Then the result should be <expected_result>
    
    Examples:
    | left_operand | right_operand | expected_result  |
    | 10.0 				 | 4.0           | 14.0             |
    | 90.0 				 | 9.0           | 99.0             |
    | 9.0          | 9.0           | 18.0             |
    | 8.0          | 3.0           | 11.0             |
    | 2.0          | 3.0           | 5.0              |
    | 6.0          | 2.5           | 8.5              |

  Scenario Outline: <left_operand> subtract <right_operand> is <expected_result>
    Given a calculator
    When <left_operand> is subtract from <right_operand> 
    Then the result should be <expected_result>
    
    Examples:
    | left_operand | right_operand | expected_result |
    | 10.0 				 | 5.0           | 5.0             |
    | 10.0 				 | 9.0           | 1.0             |
    | 9.0          | 9.0           | 0.0             |
    | 8.0          | 3.0           | 5.0             |
    | 4.0          | 3.0           | 1.0             |
    | 6.0          | 2.5           | 3.5             |
  Scenario Outline: <left_operand> multiply <right_operand> is <expected_result>
    Given a calculator
    When <left_operand> and <right_operand> are multiplied
    Then the result should be <expected_result>
    
    Examples:
    | left_operand | right_operand | expected_result |
    | 3.0 				 | 4.0           | 12.0            |
    | 10.0 				 | 9.0           | 90.0            |
    | 6.0          | 6.0           | 36.0            |
    | 12.0         | 2.0           | 24.0            |
    | 6.0          | -3.0          | -18.0           |
    | 2.0          | 10.5          | 21.00           |
    
    
  Scenario Outline: <left_operand> divide <right_operand> is <expected_result>
    Given a calculator
    When <left_operand> divided by <right_operand> 
    Then the result should be <expected_result>
    
    Examples:
    | left_operand | right_operand | expected_result |
    | 3.0 				 | 3.0           | 1.0             |
    | 90.0 				 | 9.0           | 10.0            |
    | 12.0         | 6.0           | 2.0             |
    | 6.0          | 3.0           | 2.0             |
    | 20.0         | 5.0           | 4.0             |
    | 2.5          | 2.5           | 5.00            |
    
