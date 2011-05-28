Given /^I fill in the #{capture_model}(?:'s)? email/ do |user|
  fill_in("user_email", :with => model!(user).email)
end

Given /^I fill in the #{capture_model}(?:'s)? password/ do |user|
  fill_in("user_password", :with => "password")
end

Given /^I am not authenticated$/ do
  visit('/users/sign_out') # ensure that at least
end

Given /^I am a new, authenticated user$/ do
  Given %{a user exists}
  And %{I go to the new user session page}
  And %{I fill in the user's email}
  And %{I fill in the user's password}
  And %{I press "Sign in"}
end

Given /^I sign in with the email "([^"]*)" and password "([^"]*)"$/ do |email, password|
  And %{I go to the new_user_session page}
  And %{I fill in "user_email" with "#{email}"}
  And %{I fill in "user_password" with "#{password}"}
  And %{I press "Sign in"}
end

When /^I sign up with the email "([^"]*)", display_name "([^"]*)", password "([^"]*)"$/ do |email, display_name, password|
	When %{I go to the new_user_registration page}
  And %{I fill in "Email" with "#{email}"}
	And %{I fill in "Password" with "#{password}"}
	And %{I fill in "Password confirmation" with "#{password}"}
	And %{I fill in "Display name" with "#{display_name}"}
	And %{I press "Sign up"}
end
