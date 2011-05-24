class ArmyList < ActiveRecord::Base
  attr_accessible :name, :game_system_id, :points, :user_id
  validates :name, :presence => true
  validates :points, :numericality => true
end
