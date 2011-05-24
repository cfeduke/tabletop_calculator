class RenameMaximumPointValueToPoints < ActiveRecord::Migration
  def self.up
    rename_column :army_lists, :maximum_point_value, :points
  end

  def self.down
    rename_column :army_lists, :points, :maximum_point_value
  end
end
