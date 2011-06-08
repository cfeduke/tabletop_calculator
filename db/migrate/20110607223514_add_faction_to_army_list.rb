class AddFactionToArmyList < ActiveRecord::Migration
  def self.up
    add_column :army_lists, :faction, :string
  end

  def self.down
    remove_column :army_lists, :faction
  end
end
