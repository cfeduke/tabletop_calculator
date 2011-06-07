Feature: user creates army list

	In order to create an army list
	As a user of the system
	I want to be able to save an army list
	
	Scenario: create an army list
		Given I am a new, authenticated user
		And a game_system exists with name: "Warhammer 40,000"
		When I go to the new_army_list page
		And I fill in "Name" with "My first army list"
		And I fill in "Points" with "1500"
		And I select "Warhammer 40,000" from "Game System" 
		And I press "Create"
		Then I should see "Successfully created army list."
	
	Scenario: unauthenticated user should not be able to create an army list
		Given I am not authenticated
		Then when I go to the new_army_list page permission should be denied
		
	Scenario: army list name validation
		Given I am a new, authenticated user
		When I go to the new_army_list page
		And I press "Create"
		Then I should see "Name can't be blank"

	Scenario: army list point validation
		Given I am a new, authenticated user
		When I go to the new_army_list page
		And I fill in "Name" with "Invalid Point Value"
		And I fill in "Points" with "xxx"
		And I press "Create"
		Then I should see "Points is not a number"
		
	Scenario: army list system validation
	  Given I am a new, authenticated user
		When I go to the new_army_list page
		And I fill in "Name" with "Invalid Point Value"
		And I fill in "Points" with "1750"
		And I press "Create"
		Then I should see "Game system can't be blank"
	  
