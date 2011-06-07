require 'spec_helper'

describe ArmyList do
  it "should be valid" do
    ArmyList.new do |al|
      al.name = "Name"
      al.points = 1500
      al.game_system = Factory(:game_system)
    end
    .should be_valid
  end
  it "requires name" do
    -> { ArmyList.create! }.should raise_error
  end
  it "requires points to be numeric" do
    -> { ArmyList.create!(:name => "Invalid points", :points => 'xxx') }.should raise_error
  end
  it "requires game system" do
    -> { ArmyList.create!(:name => "Invalid game system", :points => 1750) }.should raise_error
  end
end
