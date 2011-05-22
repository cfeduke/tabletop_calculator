class CreateArmyLists < ActiveRecord::Migration
  def self.up
    create_table :army_lists do |t|
      t.string :name
      t.integer :game_system_id
      t.integer :maximum_point_value
      t.integer :user_id
      t.timestamps
    end
  end

  def self.down
    drop_table :army_lists
  end
end
