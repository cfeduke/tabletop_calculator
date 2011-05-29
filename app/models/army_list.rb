class ArmyList < ActiveRecord::Base
  acts_as_taggable
  
  attr_accessible :name, :game_system_id, :points, :user_id, :tag_list
  belongs_to :game_system
  belongs_to :user
  
  validates :name, :presence => true
  validates :points, :numericality => true
end
