class CreateGamePublishers < ActiveRecord::Migration
  def self.up
    create_table :game_publishers do |t|
      t.string :name
      t.string :abbreviation

      t.timestamps
    end
  end

  def self.down
    drop_table :game_publishers
  end
end
