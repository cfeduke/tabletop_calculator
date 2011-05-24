Given /^I am not authenticated$/ do
  visit('/users/sign_out') # ensure that at least
end

Given /^I am a new, authenticated user$/ do
  email = 'test@example.com'
  password = 'password'

  Given %{a user exists with email: "#{email}", password: "#{password}", password_confirmation: "#{password}"}
  And %{I go to the new_user_session page}
  And %{I fill in "user_email" with "#{email}"}
  And %{I fill in "user_password" with "#{password}"}
  And %{I press "Sign in"}
end
