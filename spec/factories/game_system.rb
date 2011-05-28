Factory.sequence :game_system_name do |n|
  "Game System #{n}"
end

Factory.define :game_system do |gs|
  gs.name { |n| n.name = Factory.next(:game_system_name) }
  gs.association :game_publisher, :factory => :game_publisher
end

Factory.define :flames_of_war, :parent => :game_system do |gs|
  gs.name         'Flames of War'
  gs.association :game_publisher, :factory => :battlefront
end