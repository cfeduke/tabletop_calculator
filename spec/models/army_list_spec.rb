require File.dirname(__FILE__) + '/../spec_helper'

describe ArmyList do
  it "should be valid" do
    ArmyList.new(
      :name => "Name"
    ).should be_valid
  end
  it "requires name" do
    -> { ArmyList.create.should_raise }
  end
end
