Feature: Login to Tumblr  

Background:
  Given I am on the login page

   Scenario: incorrect login credentials
    When I enter the incorrect credentials
    Then I should remain in the login page

  Scenario: correct login credentials
    When I enter the correct credentials
    Then I should be on the dash board

 
  
