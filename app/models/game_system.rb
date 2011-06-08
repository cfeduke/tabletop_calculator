class GameSystem < ActiveRecord::Base
  belongs_to :game_publisher
  has_many :army_lists
end
