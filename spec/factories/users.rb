# Read about factories at http://github.com/thoughtbot/factory_girl

Factory.define :authenticated_user do |u|
  u.email     'test@example.com'
  u.password  'password'
end