Feature: user creates army list

	In order to create an army list
	As a user of the system
	I want to be able to save an army list
	
	@wip
	Scenario: create an army list
		Given I am an authenticated user
		When I go to the new_army_list page
		And I fill in "Name" with "My first army list"
		And I fill in "Points" with "1500"
		And I press "Create"
		Then I should see "Successfully created army list."