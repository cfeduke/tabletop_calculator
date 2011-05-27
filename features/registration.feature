Feature: user registration

	In order to register
	As a user who wants to use the system
	I want to be able to create an account

	Scenario: create an account with a display name
		Given I am not authenticated
		When I sign up with the email "test@example.com", display_name "Chuck Norris", password "password123"
		Then I should see "You have signed up successfully"
	
	Scenario: attempt to create an account with a display name already in use
	  Given a user exists with display_name: "display name", email: "display@name.com"
	  And I am not authenticated
	  When I sign up with the email "another@example.com", display_name "display name", password "pass_xxx_12"
	  Then I should see "Display name has already been taken"
	  
	Scenario: edit an account with a display name
	  Given a user exists with display_name: "Anastasia", email: "anastasia@tabletopcalculator.com", password: "green123"
	  And I am not authenticated
	  When I sign in with the email "anastasia@tabletopcalculator.com" and password "green123"
	  And I go to the edit_user_registration page
	  And I fill in "Display name" with "Maureen"
	  And I fill in "Current password" with "green123"
	  And I press "Update"
	  Then I should see "You updated your account successfully"
	
	Scenario: attempt to update an account with a display name already in use
	  Given a user exists with display_name: "Anastasia", email: "anastasia@tabletopcalculator.com", password: "green123"
	  And a user exists with display_name: "Merissa", email: "merissa@tabletopcalculator.com", password: "blue456"
	  And I am not authenticated
	  When I sign in with the email "merissa@tabletopcalculator.com" and password "blue456"
	  And I go to the edit_user_registration page
	  And I fill in "Display name" with "anastAsia"
	  And I fill in "Current password" with "blue456"
	  And I press "Update"
	  Then I should see "Display name has already been taken"