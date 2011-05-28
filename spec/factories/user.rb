Factory.define :user do |u|
  u.sequence(:email) { |n| "user_#{n}@example.com" }
  u.password 'password'
  u.sequence(:display_name) { |n| "user_#{n}"}
end

Factory.define :flames_of_war_army_list_author, :parent => :user do |u|
  u.email         'john@flamesofwar.com'
  u.display_name  'John S.'
end