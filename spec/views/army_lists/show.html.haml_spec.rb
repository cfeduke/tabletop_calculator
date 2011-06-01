require 'spec_helper'

describe "army_lists/show.html.haml" do
  subject do
    assign(:army_list, 
      stub_model(ArmyList, 
        :user => User.new do |u|
          u.display_name = "John Smith"
          u.id = 1
        end
      )
    )
    render
    rendered
  end
  
  it { should have_tag("a", :text => "John Smith") }
end