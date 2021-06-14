Author: ttbtigist2020@gmail.com

  As a user, I want to navigate on page on google.
  As a user, I want to search a page on google.


  discovery:
     -navigating
     -searching 
     
  
@tag
Feature: navigating and searching for a page on google.
  
  @tag1
  Scenario: navigating a google page
    Given  a HomePage
    When I write google.com on the search bar
    Then I get google.com page


  @tag2
  Scenario: searching Bank of America page
    Given a HomePage
    When I write Bank of America on the search button
    Then I searched Bank of America page


