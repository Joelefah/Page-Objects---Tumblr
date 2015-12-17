Feature: Create post on Tumblr
    
  Scenario: Create a text post with Title and Body
    Given I select the text post button on the dashboard
    When I fill out the title field
    And the body field 
    And I submit the post
    Then I should see my post on the dashboard

  
