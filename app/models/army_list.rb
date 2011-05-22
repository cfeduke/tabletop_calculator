class ArmyList < ActiveRecord::Base
  attr_accessible :name, :game_system_id, :maximum_point_value, :user_id
end
