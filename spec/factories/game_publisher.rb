Factory.define :game_publisher do |gp|
  gp.name "Generic Publisher"
  gp.abbreviation "GP"
end

Factory.define :battlefront, :parent => :game_publisher do |gp|
  gp.name "Battlefront"
  gp.abbreviation "BF"
end