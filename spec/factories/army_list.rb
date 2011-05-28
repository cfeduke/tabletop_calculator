Factory.define :army_list do |al|
  al.association  :game_system, :factory => :game_system
  al.association  :user, :factory => :user
end

Factory.define :flames_of_war_army_list, :parent => :army_list do |al|
  al.name         '21. Panzerdivision Panzergrenadierekompanie'
  al.points       1750
  al.association  :user, :factory => :flames_of_war_army_list_author
  al.association  :game_system, :factory => :flames_of_war
end