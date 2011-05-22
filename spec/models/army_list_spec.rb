require File.dirname(__FILE__) + '/../spec_helper'

describe ArmyList do
  it "should be valid" do
    ArmyList.new.should be_valid
  end
end
