Factory.define :user do |u|
  u.email         'test@example.com'
  u.password      'password'
  u.display_name  'display name'
end

Factory.define :flames_of_war_army_list_author, :parent => :user do |u|
  u.email         'john@flamesofwar.com'
  u.display_name  'John S.'
end