Feature: Adding tags to an army list
  In order to easily find army lists
  As a user of the system
  I want to be able to add tags to army lists

  Background:
    Given I am a new, authenticated user
    And a game system exists with name: "Warhammer 40,000"
    And the following army lists exist:
    | name               | points | game system            |
    | My first army list | 1500   | Name: Warhammer 40,000 |
    When I go to the army list's page
    And I follow "Edit"
    
  @wip
  Scenario: Add new tag
    Given I fill in "Tags" with "NewTag"
    And I press "Update"
    Then I should see "NewTag"
    
  Scenario: Add new tag while not logged in
  Scenario: Remove tag
  
  Scenario: Try to add tag that already exists
  Scenario: Try to add a tag that is really long
  Scenario: Try to add a tag that contains non-alphanumeric characters
  Scenario: Try to add a tag that contains two dashes in a row