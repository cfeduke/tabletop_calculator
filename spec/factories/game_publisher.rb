Factory.define :game_publisher do |gp|
  gp.sequence(:name) { |n| "Game Publisher #{n}" }
  gp.sequence(:abbreviation) { |n| "GP#{n}" }
end

Factory.define :battlefront, :parent => :game_publisher do |gp|
  gp.name "Battlefront"
  gp.abbreviation "BF"
end