require 'spec_helper'

describe "army_lists/show.html.haml" do
  subject do
    assign(:army_list, 
      stub_model(ArmyList, 
        :name => "Name",
        :user => User.new do |u|
          u.display_name = "John Smith"
          u.id = 1
        end,
        :game_system => GameSystem.new do |gs|
          gs.id = 1
          gs.name = "Generic Game System"
        end
      )
    )
    render
    rendered
  end
  
  it { should have_tag("a", :text => "John Smith") }
  it { should have_tag("p", :text => /Name/m) }
  it { should have_tag("a", :text => /Generic Game System/m) }
end