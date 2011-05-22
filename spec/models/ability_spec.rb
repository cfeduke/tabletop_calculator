require 'spec_helper'

describe Ability do
  describe "guest" do
    let(:guest) { Ability.new(nil) }
    it "can sign in" do
      # reserved for implementation later
      #guest.can?(:new, Devise::SessionsController).should be_true
    end
    it "can view the home page" do
      guest.can?(:read, :home).should be_true
    end
  end
  
end