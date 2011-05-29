Feature: Adding tags to an army list
  In order to easily find army lists
  As a user of the system
  I want to be able to add tags to army lists
    
  Background:
    Given I am a new, authenticated user
    And a game system: "warhammer40k" exists with name: "Warhammer 40,000"
    And the following army lists exist:
    | name               | points | game_system                 |
    | My first army list | 1500   | game system: "warhammer40k" |
    When I go to the army list's page
    And I follow "Edit"    
    
  Scenario: Add new tag
    Given I fill in "Tag list" with "NewTag"
    And I press "Update"
    Then I should see "NewTag"
    
  Scenario: Remove tag
  

  
  Scenario: Try to add tag that already exists
    Given I fill in "Tag list" with "NewTag"
    And I press "Update"
    Then I should see "NewTag"
    When I go to the army list's page
    And I follow "Edit"
    Given I fill in "Tag list" with "NewTag"
    And I press "Update"
    Then I should see "NewTag"
    
  Scenario: Try to add a tag that is really long
    Given I fill in "Tag list" with "ThisIsAReallyLongTagAndWeShouldntSupportItBecauseItIsWayTooLong"
    And I press "Update"
    Then I should see "Tag is too long. Please try a shorter one."
    
  Scenario: Try to add a tag that contains non-alphanumeric characters
    Given I fill in "Tag list" with "New%$Tag"
    And I press "Update"
    Then I should see "New-Tag"
    
  Scenario: Try to add a tag that contains two dashes in a row
    Given I fill in "Tag list" with "New--Tag"
    And I press "Update"
    Then I should see "New-Tag"
    