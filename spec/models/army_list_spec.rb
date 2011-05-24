require File.dirname(__FILE__) + '/../spec_helper'

describe ArmyList do
  it "should be valid" do
    ArmyList.new(
      :name => "Name",
      :points => 1500
    ).should be_valid
  end
  it "requires name" do
    -> { ArmyList.create! }.should raise_error
  end
  it "requires points to be numeric" do
    -> { ArmyList.create!(:name => "Invalid points", :points => 'xxx') }.should raise_error
  end
end
