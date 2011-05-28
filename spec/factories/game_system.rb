Factory.define :game_system do |gs|
  gs.sequence(:name) { |n| "Game System #{n}" }
  gs.association :game_publisher, :factory => :game_publisher
end

Factory.define :flames_of_war, :parent => :game_system do |gs|
  gs.name         'Flames of War'
  gs.association :game_publisher, :factory => :battlefront
end