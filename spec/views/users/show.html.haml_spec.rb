require 'spec_helper'

describe "users/show.html.haml" do
  subject do
    assign(:user, stub_model(User, :display_name => 'Jacob Jinglemeyer'))
    render
    rendered
  end
    
  it { should have_tag("h1", :text => "Jacob Jinglemeyer") }  
end
