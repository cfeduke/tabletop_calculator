class ArmyList < ActiveRecord::Base
  attr_accessible :name, :game_system_id, :points, :user_id
  belongs_to :game_system
  belongs_to :user
  
  validates :name, :presence => true
  validates :points, :numericality => true
end
