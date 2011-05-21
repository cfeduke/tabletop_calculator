# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
GamePublisher.create!(:name => "Games Workshop", :abbreviation => "GW")
GamePublisher.create!(:name => "Battlefront Miniatures", :abbreviation => "BF")

gw = GamePublisher.where(:name => 'Games Workshop').first
GameSystem.create!(:name => "Warhammer 40,000", :game_publisher_id => gw.id)
GameSystem.create!(:name => "Warhammer Fantasy", :game_publisher_id => gw.id)

GameSystem.create!(:name => "Flames of War", :game_publisher_id => GamePublisher.where(:name => 'Battlefront Miniatures').first.id)
