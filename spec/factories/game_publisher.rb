Factory.sequence :game_publisher_name do |n|
  "Game Publisher #{n}"
end

Factory.sequence :game_publisher_abbreviation do |n|
  "GP#{n}"
end

Factory.define :game_publisher do |gp|
  gp.name { |n| n.name = Factory.next(:game_publisher_name) }
  gp.abbreviation { |a| a.abbreviation = Factory.next(:game_publisher_abbreviation) }
end

Factory.define :battlefront, :parent => :game_publisher do |gp|
  gp.name "Battlefront"
  gp.abbreviation "BF"
end