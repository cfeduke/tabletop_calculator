class ArmyList < ActiveRecord::Base
  acts_as_taggable
  
  attr_accessible :name, :game_system_id, :points, :user_id, :faction
  belongs_to :game_system
  belongs_to :user
  
  validates :name, :presence => true
  validates :points, :numericality => true
  validates :game_system, :presence => true
end
