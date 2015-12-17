Feature: Login to Tumblr  

Background:
  Given I am on the login page

  @invalid_login
  Scenario: incorrect login credentials
    When I enter the invalid credentials
    Then I should remain in the login page

  @valid_login
  Scenario: correct login credentials
    When I enter the valid credentials
    Then I should be on the dash board

 
  
