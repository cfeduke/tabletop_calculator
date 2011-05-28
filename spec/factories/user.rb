Factory.sequence :user_email do |n|
  "user_#{n}@example.com"
end

Factory.sequence :user_display_name do |n|
  "user_#{n}"
end

Factory.define :user do |u|
  u.email { |e| e.email = Factory.next(:user_email) }
  u.password      'password'
  u.display_name { |d| d.display_name = Factory.next(:user_display_name) }
end

Factory.define :flames_of_war_army_list_author, :parent => :user do |u|
  u.email         'john@flamesofwar.com'
  u.display_name  'John S.'
end